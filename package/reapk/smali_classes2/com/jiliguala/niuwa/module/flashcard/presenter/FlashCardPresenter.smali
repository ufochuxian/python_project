.class public Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;,
        Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static TYPE_FLASH_CARD:Ljava/lang/String;

.field public static TYPE_FLASH_CARD_SPEAK:Ljava/lang/String;

.field public static TYPE_PARENT_SPEAK:Ljava/lang/String;


# instance fields
.field private downloadPlayRun:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$b;

.field private isFinishing:Z

.field private mContext:Landroid/content/Context;

.field private mCourseId:Ljava/lang/String;

.field private mCurIndex:I

.field private mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

.field private mDLManager:Lcom/jiliguala/niuwa/logic/downloader/a/b;

.field private mDLTaskListener:Lcom/jiliguala/niuwa/logic/downloader/c/b;

.field private mDownloadingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

.field private mHandler:Landroid/os/Handler;

.field private mPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayWhenReady:Z

.field private mRid:Ljava/lang/String;

.field private mSimpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

.field private mSpeakView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

.field private mSubTaskId:Ljava/lang/String;

.field private playRun:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;

.field private source:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "flash_card"

    sput-object v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->TYPE_FLASH_CARD:Ljava/lang/String;

    .line 45
    const-string v0, "flash_card_speak"

    sput-object v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->TYPE_FLASH_CARD_SPEAK:Ljava/lang/String;

    .line 46
    const-string v0, "parent_speak"

    sput-object v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->TYPE_PARENT_SPEAK:Ljava/lang/String;

    .line 48
    const-class v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;Landroid/content/Context;)V
    .locals 2
    .param p1, "flashCardView"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mHandler:Landroid/os/Handler;

    .line 65
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->isFinishing:Z

    .line 69
    sget-object v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->TYPE_FLASH_CARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->type:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mDownloadingMap:Ljava/util/Map;

    .line 75
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mDLTaskListener:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    .line 113
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    .line 115
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mContext:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/downloader/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mDLManager:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    .line 120
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$b;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->downloadPlayRun:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$b;

    .line 121
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->isFinishing:Z

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mDownloadingMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayWhenReady:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->play(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->source:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->source:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->playInFlow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 43
    iget v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSpeakView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->convertSpeakCardModelTempleteToFlashCard(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->isFinishing:Z

    return v0
.end method

.method private convertSpeakCardModelTempleteToFlashCard(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "speakCardModelTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 128
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;

    if-nez v4, :cond_1

    .line 144
    :cond_0
    return-object v1

    .line 130
    :cond_1
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;

    iget-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;->sentences:Ljava/util/ArrayList;

    .line 131
    .local v3, "sentences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;>;"
    if-eqz v3, :cond_0

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "cards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;

    .line 135
    .local v2, "s":Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;-><init>()V

    .line 136
    .local v0, "card":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->_id:Ljava/lang/String;

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    .line 137
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->audio:Ljava/lang/String;

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->audio:Ljava/lang/String;

    .line 138
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->word:Ljava/lang/String;

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->word:Ljava/lang/String;

    .line 139
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->cword:Ljava/lang/String;

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->cword:Ljava/lang/String;

    .line 140
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->pic:Ljava/lang/String;

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->pic:Ljava/lang/String;

    .line 141
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;->clr:Ljava/lang/String;

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->clr:Ljava/lang/String;

    .line 142
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private doDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 505
    if-nez p2, :cond_0

    .line 506
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "flash audio url is null."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/d/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 509
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 511
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mDLManager:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mDLTaskListener:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    invoke-virtual {v1, p2, v2, v3}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/downloader/c/b;)V

    .line 512
    return-void
.end method

.method private download(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 360
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .line 361
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->download(Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;)V

    .line 362
    return-void
.end method

.method private download(Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;)V
    .locals 3
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mDownloadingMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->audio:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->audio:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->doDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private downloadOrPlay()V
    .locals 5

    .prologue
    .line 366
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .line 367
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iget-object v0, v3, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->audio:Ljava/lang/String;

    .line 368
    .local v0, "audioUrl":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v3

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/k/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->source:Ljava/lang/String;

    .line 370
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->source:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    iget v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->download(I)V

    .line 390
    .end local v0    # "audioUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 376
    .restart local v0    # "audioUrl":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->source:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    iget v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->download(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    .end local v0    # "audioUrl":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 384
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "audioUrl":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->source:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->playInFlow(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "courseId"    # Ljava/lang/String;
    .param p3, "subTaskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;",
            ">;)",
            "Lokhttp3/ab;"
        }
    .end annotation

    .prologue
    .line 473
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    .line 474
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 475
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 476
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 477
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    .line 479
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 482
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private play(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSpeakView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSpeakView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSimpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-interface {v1, v2, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->playFlashCard(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;Ljava/lang/String;)V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->isChannelShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSimpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private playInFlow(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 425
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->playRun:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;

    .line 427
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->playRun:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method

.method private requestFlashCard()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mRid:Ljava/lang/String;

    .line 185
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->c(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 186
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 187
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 188
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V

    .line 189
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 214
    :cond_0
    return-void
.end method

.method private requestParentSpeak()V
    .locals 5

    .prologue
    .line 217
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    if-eqz v1, :cond_0

    .line 218
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSubTaskId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    .end local v0    # "bid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 222
    .restart local v0    # "bid":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mRid:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSubTaskId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/jiliguala/niuwa/logic/network/d;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 224
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 225
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 226
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V

    .line 227
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private requestSpeakFlashCard()V
    .locals 5

    .prologue
    .line 260
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    if-eqz v1, :cond_0

    .line 261
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCourseId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    .end local v0    # "bid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 265
    .restart local v0    # "bid":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mRid:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCourseId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/jiliguala/niuwa/logic/network/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 267
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 268
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 269
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$7;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V

    .line 270
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method


# virtual methods
.method public doChannelSelectAction()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->playRun:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->playRun:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 433
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->doServerRequest()V

    .line 436
    return-void
.end method

.method public doServerRequest()V
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->TYPE_FLASH_CARD:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->requestFlashCard()V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    sget-object v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->TYPE_FLASH_CARD_SPEAK:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->requestSpeakFlashCard()V

    goto :goto_0

    .line 307
    :cond_2
    sget-object v0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->TYPE_PARENT_SPEAK:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->requestParentSpeak()V

    goto :goto_0
.end method

.method public play()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->downloadOrPlay()V

    .line 417
    return-void
.end method

.method public play(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "playWhenReady"    # Z

    .prologue
    .line 329
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayWhenReady:Z

    .line 330
    iput p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->downloadPlayRun:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method public play(Z)V
    .locals 0
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayWhenReady:Z

    .line 421
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->downloadOrPlay()V

    .line 422
    return-void
.end method

.method public playNext(Z)V
    .locals 2
    .param p1, "loopEnable"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    if-eqz p1, :cond_2

    .line 337
    iget v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    .line 345
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    iget v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->changeVPView(I)V

    .line 347
    :cond_1
    return-void

    .line 340
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    .line 341
    iget v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    goto :goto_0
.end method

.method public playPrev()V
    .locals 2

    .prologue
    .line 350
    iget v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    .line 351
    iget v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    if-gez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    iget v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCurIndex:I

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->changeVPView(I)V

    .line 356
    return-void
.end method

.method public registerMediaPlayService()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->enableButton(Z)V

    .line 157
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSimpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSimpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    new-instance v1, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V

    new-instance v2, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V

    .line 178
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->doServerRequest()V

    .line 179
    return-void
.end method

.method public reportServer(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 396
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/a/a;->a()Lcom/jiliguala/niuwa/logic/network/a/a;

    move-result-object v0

    const-string v1, "FakeResourceID"

    const-string v2, "flashcards"

    int-to-long v4, p1

    .line 397
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/jiliguala/niuwa/logic/network/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 398
    return-void
.end method

.method public sendSubCourseCompleteRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "courseid"    # Ljava/lang/String;
    .param p2, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "bid":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 443
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    const/4 v3, 0x0

    .line 444
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 445
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 446
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 447
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$8;

    invoke-direct {v3, p0, p2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$8;-><init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 442
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 469
    :cond_0
    return-void
.end method

.method public setCourseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "courseId"    # Ljava/lang/String;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mCourseId:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mRid:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setSpeakView(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;)V
    .locals 0
    .param p1, "speakView"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSpeakView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    .line 520
    return-void
.end method

.method public setSubTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSubTaskId:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->type:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public unRegisterMediaPlayService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSimpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSimpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mSimpleMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V

    .line 323
    :cond_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mFlashCardView:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;

    .line 324
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->isFinishing:Z

    .line 326
    return-void
.end method
