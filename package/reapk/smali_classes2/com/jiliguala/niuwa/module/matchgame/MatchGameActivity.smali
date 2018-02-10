.class public Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;
.implements Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;
    }
.end annotation


# static fields
.field private static final MSG_PLAY_AUDIO:I = 0x1000

.field private static final MSG_STOP_PLAY_AUDIO:I = 0x1001

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actVolume:F

.field private audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

.field private audioUrl:Ljava/lang/String;

.field private completeListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

.field private curPos:I

.field private errorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

.field private mHandler:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;

.field private mIsCourseFinished:Z

.field private mPageText:Landroid/widget/TextView;

.field private mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

.field private mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

.field private matchChineseTv:Landroid/widget/TextView;

.field private matchEnglishTv:Landroid/widget/TextView;

.field private matchVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

.field private matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

.field private maxVolume:F

.field private preparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

.field private progressBar:Landroid/view/View;

.field private questions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;",
            ">;"
        }
    .end annotation
.end field

.field private rid:Ljava/lang/String;

.field private soundID:I

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 66
    new-instance v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$1;-><init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->preparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    .line 71
    new-instance v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$2;-><init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->completeListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    .line 76
    new-instance v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$3;-><init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->errorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->questions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->questions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Lcom/jiliguala/niuwa/common/widget/CustomViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->cancelSubCourse()V

    return-void
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mIsCourseFinished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->autoPlayAudio()V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->stopPlayAudio()V

    return-void
.end method

.method private autoPlayAudio()V
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 348
    return-void
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
    .line 352
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    .line 353
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 354
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 355
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 356
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    .line 358
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 361
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private initSoundPool()V
    .locals 2

    .prologue
    .line 433
    new-instance v0, Lcom/jiliguala/niuwa/logic/n/a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/n/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    .line 434
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->soundID:I

    .line 435
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 171
    new-instance v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;-><init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mHandler:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;

    .line 172
    const v0, 0x7f0b011b

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->setContentView(I)V

    .line 173
    const v0, 0x7f090402

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->progressBar:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v0, 0x7f090311

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v0, 0x7f090312

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchChineseTv:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchChineseTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f090313

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchEnglishTv:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchEnglishTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v0, 0x7f090314

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setPagingEnabled(Z)V

    .line 184
    new-instance v0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;-><init>(Landroid/support/v4/app/ag;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->setInterface(Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;)V

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 187
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 188
    const v0, 0x7f0903be

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mPageText:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mPageText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    return-void
.end method

.method private performExit()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mHandler:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mHandler:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->onDestroy()V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/n/a;->a()V

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->finish()V

    .line 271
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->overridePendingTransition(II)V

    .line 272
    return-void
.end method

.method private requestExam()V
    .locals 4

    .prologue
    .line 121
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->rid:Ljava/lang/String;

    .line 127
    invoke-interface {v2, v0, v3}, Lcom/jiliguala/niuwa/logic/network/d;->f(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 128
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 129
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 130
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$4;-><init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V

    .line 131
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private stopPlayAudio()V
    .locals 2

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updatePageText(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 397
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->questions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 399
    .local v0, "total":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mPageText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mPageText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    .end local v0    # "total":I
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mPageText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateQuestionText(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 407
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->questions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;->eq:Ljava/lang/String;

    .line 409
    .local v1, "eq":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchEnglishTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    iget-object v0, v2, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;->cq:Ljava/lang/String;

    .line 411
    .local v0, "cq":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchChineseTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;->audiourl:Ljava/lang/String;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioUrl:Ljava/lang/String;

    .line 413
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mHandler:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->sendEmptyMessage(I)Z

    .line 415
    .end local v0    # "cq":Ljava/lang/String;
    .end local v1    # "eq":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public bingo()V
    .locals 7

    .prologue
    .line 277
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mSoundPool:Lcom/jiliguala/niuwa/logic/n/a;

    iget v3, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->soundID:I

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/n/a;->b(I)V

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mHandler:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->sendEmptyMessage(I)Z

    .line 282
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->getCurrentItem()I

    move-result v1

    .line 283
    .local v1, "index":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVp:Lcom/jiliguala/niuwa/common/widget/CustomViewPager;

    new-instance v3, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$5;-><init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;I)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/common/widget/CustomViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->progressBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "bid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    .line 298
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 299
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getCourseId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v3

    .line 300
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 301
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 302
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;-><init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V

    .line 303
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 297
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public confirmExit()V
    .locals 0

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->sendCourseTaskExitReport()V

    .line 440
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->performExit()V

    .line 441
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 252
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mIsCourseFinished:Z

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    move-result-object v0

    .line 254
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 258
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->performExit()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 200
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 202
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->onBackPressed()V

    goto :goto_0

    .line 207
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x7f090311 -> :sswitch_1
        0x7f090312 -> :sswitch_1
        0x7f090313 -> :sswitch_1
        0x7f090590 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->rid:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PARAM_COURSE_TICKET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getResourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->rid:Ljava/lang/String;

    .line 111
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->requestExam()V

    .line 113
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->audioPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->preparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->completeListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->errorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V

    .line 116
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->initUI()V

    .line 117
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->initSoundPool()V

    .line 118
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 156
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 157
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->initialize(Landroid/content/Context;)V

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 167
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 160
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->lowerVolume()V

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->raiseVolume()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 430
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 381
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 391
    iput p1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->curPos:I

    .line 392
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->updateQuestionText(I)V

    .line 393
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->updatePageText(I)V

    .line 394
    return-void
.end method

.method public sendCourseTaskExitReport()V
    .locals 4

    .prologue
    .line 444
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v2, "Step"

    iget v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->curPos:I

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->matchVpAdapter:Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v1, "Time"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 453
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void

    .line 449
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->curPos:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public wrongAnswer()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->mHandler:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->sendEmptyMessage(I)Z

    .line 367
    return-void
.end method
