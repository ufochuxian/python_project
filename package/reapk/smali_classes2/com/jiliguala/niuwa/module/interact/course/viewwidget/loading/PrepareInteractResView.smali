.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/a$a;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;
.implements Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;,
        Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;,
        Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;
    }
.end annotation


# static fields
.field private static final APNG_LOADING:Ljava/lang/String; = "assets://apng/loader_baozi.png"

.field public static final DEFAULT_DOWNLOAD_STYLE:I = 0x1000

.field public static final GAME_RES_DOWNLOAD_STYLE:I = 0x1001

.field public static final MAX_RETRY_DOWOLOAD_COUNT:I = 0x3

.field private static final MSG_REFRESH_UNZIP_PROGRESS:I = 0x1002

.field private static final MSG_UPDATE_PROGRESS:I = 0x1001

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public defaultBgProgressColor:I

.field public defaultProgressColor:I

.field public hasRegister:Z

.field private lastProgress:I

.field private mActionScriptId:Ljava/lang/String;

.field private mBgProgressColor:I

.field protected mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

.field private mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

.field private mContentContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCourseId:Ljava/lang/String;

.field protected mCurrentDownloadUrl:Ljava/lang/String;

.field private mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

.field private mDownloadUIContainer:Landroid/view/View;

.field private mDownloadUrlIndex:I

.field private mDownloadUrlWithMd5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGameDownloadContainer:Landroid/view/View;

.field private mGameProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

.field public mHasFinishUnZipFile:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mNetWorkNotifyDialog:Lcom/jiliguala/niuwa/common/widget/a;

.field private mPHandler:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;

.field private mPlayBtn:Landroid/widget/ImageView;

.field protected mPrepareInteractResViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

.field private mProgressColor:I

.field private mRetryCount:I

.field protected mSaveDir:Ljava/lang/String;

.field private mStyle:I

.field private mSubCouseId:Ljava/lang/String;

.field private mTextDesc:Landroid/widget/TextView;

.field private mThumb:Landroid/widget/ImageView;

.field private mTipsView:Landroid/widget/TextView;

.field private mType:I

.field public mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

.field private params:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrls:Ljava/util/List;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrlWithMd5:Ljava/util/List;

    .line 90
    const/16 v1, 0x32

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->lastProgress:I

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->defaultProgressColor:I

    .line 105
    const v1, 0x4dffffff    # 5.3687088E8f

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->defaultBgProgressColor:I

    .line 108
    const/16 v1, 0x1000

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mStyle:I

    .line 131
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mContext:Landroid/content/Context;

    .line 132
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->PrepareInteractResView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->defaultProgressColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mProgressColor:I

    .line 134
    const/4 v1, 0x0

    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->defaultBgProgressColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mBgProgressColor:I

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->initView()V

    .line 137
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->process()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->downloadProgress(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)Lcom/liulishuo/magicprogresswidget/MagicProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    return-object v0
.end method

.method private downloadProgress(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "progress"    # J

    .prologue
    .line 509
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->isInteractCourseFragmentVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->hasCoursePay()Z

    move-result v2

    if-nez v2, :cond_1

    .line 511
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateProgress(I)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    const-wide/16 v2, 0x2

    mul-long/2addr v2, p3

    const-wide/16 v4, 0x4

    div-long v0, v2, v4

    .line 522
    .local v0, "reSizeProgress":J
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->showDownloadProgress()V

    .line 523
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->showTextDownloading()V

    .line 524
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateProgress(I)V

    goto :goto_0
.end method

.method private getCurrentDownloadUrlIndex()I
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrlIndex:I

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrlIndex:I

    .line 364
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrlIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrlIndex:I

    return v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 368
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->S_IS_SUB_COURSE_VISIBLE:Z

    .line 370
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPHandler:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;

    .line 372
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPrepareInteractResViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    .line 374
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01a7

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mContentContainer:Landroid/widget/LinearLayout;

    .line 378
    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUIContainer:Landroid/view/View;

    .line 380
    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameDownloadContainer:Landroid/view/View;

    .line 382
    const v1, 0x7f090304

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    .line 384
    const v1, 0x7f0903ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPlayBtn:Landroid/widget/ImageView;

    .line 386
    const v1, 0x7f09056a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTextDesc:Landroid/widget/TextView;

    .line 388
    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    .line 390
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mProgressColor:I

    invoke-virtual {v1, v2}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setColor(I)V

    .line 392
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mBgProgressColor:I

    invoke-virtual {v1, v2}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setBackgroundColor(I)V

    .line 394
    const v1, 0x7f090274

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mIcon:Landroid/widget/ImageView;

    .line 397
    return-void
.end method

.method private md5DownloadUrls()V
    .locals 4

    .prologue
    .line 687
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrls:Ljava/util/List;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 688
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 689
    .local v0, "downloadUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "md5Name":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrlWithMd5:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 694
    .end local v0    # "downloadUrl":Ljava/lang/String;
    .end local v1    # "md5Name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private registerDownloadReceiver()V
    .locals 3

    .prologue
    .line 436
    new-instance v1, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    .line 437
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 438
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hasRegister:Z

    .line 441
    return-void
.end method

.method private registerUnzipFileReceiver()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method


# virtual methods
.method public cancelDownloadRes()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPrepareInteractResViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->cancelDownload()V

    .line 636
    return-void
.end method

.method public checkCanDo()Z
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->isInteractCourseFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->hasStop()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->hasCoursePay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkDownloadPackageRes()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getSaveFileDir()Ljava/io/File;

    move-result-object v9

    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/i;->b(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 221
    .local v6, "localListFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v2, "completeListFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 223
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 225
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getSuccessTextFile()Ljava/io/File;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 230
    .local v7, "str":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 231
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 234
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 235
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v7    # "str":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 239
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 248
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return v8

    .line 238
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 239
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 241
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 242
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 244
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 245
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 238
    .end local v7    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 239
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 240
    throw v8

    .line 248
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 238
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v7    # "str":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "str":Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 234
    .end local v7    # "str":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_1

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public checkPermisson(Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPrepareInteractResViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->checkRecordPermission(Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;)V

    .line 640
    return-void
.end method

.method protected doAfterFinishedUnzipDownloadRes()V
    .locals 3

    .prologue
    .line 269
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mHasFinishUnZipFile:Z

    .line 270
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v1, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 273
    .local v0, "hasOpenRecordPermission":Z
    if-eqz v0, :cond_2

    .line 274
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->isInteractCourseFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->doOnUnzipResSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_2
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)V

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->checkPermisson(Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;)V

    goto :goto_0
.end method

.method protected doOnUnzipResSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCourseId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSubCouseId:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mActionScriptId:Ljava/lang/String;

    iget v5, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mType:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->makeIntentForWholeLesson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 615
    return-void
.end method

.method public downloadRes()V
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->EnableDownloadResWithNoWifi:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->startDownloadWithNotify()V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->realDownload()V

    goto :goto_0
.end method

.method public getDestFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getSaveFileDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadSaveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 356
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "downloadFile":Ljava/io/File;
    return-object v0
.end method

.method public getNetWorkNotifyDialog()Lcom/jiliguala/niuwa/common/widget/a;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mNetWorkNotifyDialog:Lcom/jiliguala/niuwa/common/widget/a;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mNetWorkNotifyDialog:Lcom/jiliguala/niuwa/common/widget/a;

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mNetWorkNotifyDialog:Lcom/jiliguala/niuwa/common/widget/a;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/a;->a(Lcom/jiliguala/niuwa/common/widget/a$a;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mNetWorkNotifyDialog:Lcom/jiliguala/niuwa/common/widget/a;

    return-object v0
.end method

.method public getParams(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, -0x2

    .line 753
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 754
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    .line 755
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v1, p1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 758
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v1, p2

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 759
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    sget-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    return-object v0
.end method

.method protected getSaveFileDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSrcFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getDownloadSaveFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getSuccessTextFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 300
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/success.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "zipFile":Ljava/io/File;
    return-object v0
.end method

.method public hasCompletedFinishedZipFile()Z
    .locals 10

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getSuccessTextFile()Ljava/io/File;

    move-result-object v7

    .line 306
    .local v7, "zipFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 307
    const/4 v4, 0x0

    .line 308
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 310
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "line":Ljava/lang/String;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrlWithMd5:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 320
    .local v2, "downUrlWidthmd5":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v9

    if-eqz v9, :cond_0

    .line 321
    const/4 v8, 0x1

    .line 331
    if-eqz v5, :cond_1

    .line 333
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 338
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 340
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 347
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "downUrlWidthmd5":Ljava/lang/String;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "line":Ljava/lang/String;
    :cond_2
    :goto_1
    return v8

    .line 334
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "downUrlWidthmd5":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 335
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 341
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 342
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 331
    .end local v2    # "downUrlWidthmd5":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    if-eqz v5, :cond_4

    .line 333
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 338
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 340
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 347
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "line":Ljava/lang/String;
    :cond_5
    :goto_3
    const/4 v8, 0x0

    goto :goto_1

    .line 334
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 335
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 341
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 342
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 328
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    .line 329
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 331
    if-eqz v4, :cond_6

    .line 333
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 338
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_5
    if-eqz v0, :cond_5

    .line 340
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    .line 341
    :catch_5
    move-exception v3

    .line 342
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 334
    .local v3, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .line 335
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 331
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v4, :cond_7

    .line 333
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 338
    :cond_7
    :goto_7
    if-eqz v0, :cond_8

    .line 340
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 345
    :cond_8
    :goto_8
    throw v8

    .line 334
    :catch_7
    move-exception v3

    .line 335
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 341
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 342
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 331
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .line 328
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_a
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4
.end method

.method public hasFinishedDownloadFile()Z
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getDownloadSaveFile()Ljava/io/File;

    move-result-object v0

    .line 352
    .local v0, "downloadFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public hasSuccessTextFile()Z
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getSuccessTextFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public hideDownloadProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 804
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->isDefaultDownloadStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    invoke-virtual {v0, v1}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setVisibility(I)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->isGameStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    invoke-virtual {v0, v1}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->setVisibility(I)V

    .line 810
    :cond_1
    return-void
.end method

.method public hidePlayBtn()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPlayBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    :cond_0
    return-void
.end method

.method public initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "courseId"    # Ljava/lang/String;
    .param p2, "subCouseId"    # Ljava/lang/String;
    .param p3, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCourseId:Ljava/lang/String;

    .line 718
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSubCouseId:Ljava/lang/String;

    .line 719
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    .line 720
    invoke-static {}, Lcom/jiliguala/niuwa/services/f;->a()Lcom/jiliguala/niuwa/services/f;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/jiliguala/niuwa/services/f;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;)V

    .line 721
    return-void
.end method

.method public isDefaultDownloadStyle()Z
    .locals 2

    .prologue
    .line 415
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mStyle:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public isGameStyle()Z
    .locals 2

    .prologue
    .line 420
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mStyle:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 705
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->EnableDownloadResWithNoWifi:Z

    .line 706
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 707
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->enableInnerContainer()V

    .line 710
    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->EnableDownloadResWithNoWifi:Z

    .line 699
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->realDownload()V

    .line 700
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 448
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPHandler:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPHandler:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    if-eqz v0, :cond_1

    .line 452
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->unRegisterReceiver()V

    .line 455
    return-void
.end method

.method public onDownloadTaskAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 484
    return-void
.end method

.method public onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "full_path"    # Ljava/lang/String;
    .param p4, "download_type"    # I

    .prologue
    .line 489
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateNotifyText(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPrepareInteractResViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    invoke-virtual {v0, p2, p1, p3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPrepareInteractResViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->setEnableDownloadRes(Z)V

    .line 494
    :cond_0
    return-void
.end method

.method public onDownloadTaskError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "errorCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hasFinishedDownloadFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getDownloadSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/i;->f(Ljava/lang/String;)V

    .line 535
    :cond_0
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    .line 536
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u624b\u673a\u7a7a\u95f4\u4e0d\u8db3!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 537
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateProgress(I)V

    .line 538
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->exitCurrentSubCourse()V

    .line 563
    :cond_1
    :goto_0
    return-void

    .line 543
    :cond_2
    const/4 v0, 0x1

    if-ne p4, v0, :cond_3

    .line 544
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateProgress(I)V

    .line 546
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->enableInnerContainer()V

    goto :goto_0

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrls:Ljava/util/List;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mRetryCount:I

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_5

    .line 552
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->startDownload()V

    .line 561
    :cond_4
    :goto_1
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mRetryCount:I

    goto :goto_0

    .line 555
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u7684\u7f51\u7edc\u4e0d\u592a\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 556
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateProgress(I)V

    .line 557
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    if-eqz v0, :cond_4

    .line 558
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->exitCurrentSubCourse()V

    goto :goto_1
.end method

.method public onDownloadTaskProgress(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "progress"    # J

    .prologue
    const/16 v3, 0x1001

    .line 498
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;

    invoke-direct {v1, p1, p2, p4, p5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 499
    .local v1, "obj":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPHandler:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 500
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPHandler:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 505
    :cond_0
    return-void
.end method

.method public onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 572
    return-void
.end method

.method public onUnZipFail()V
    .locals 1

    .prologue
    .line 626
    const/16 v0, 0x32

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->lastProgress:I

    .line 628
    return-void
.end method

.method public onUnZipSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mHasFinishUnZipFile:Z

    .line 594
    const/16 v0, 0x32

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->lastProgress:I

    .line 596
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->reportLessonDownloadSuccess()V

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateProgress(I)V

    .line 598
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hideDownloadProgress()V

    .line 599
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->showTextDefault()V

    .line 601
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->checkCanDo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->doOnUnzipResSuccess(Ljava/lang/String;)V

    .line 607
    :cond_0
    return-void
.end method

.method public process()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->registerDownloadReceiver()V

    .line 425
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->registerUnzipFileReceiver()V

    .line 426
    return-void
.end method

.method protected realDownload()V
    .locals 4

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->showDownloadProgress()V

    .line 265
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPrepareInteractResViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCurrentDownloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    sget-object v3, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->downloadInteractLessonResources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public refreshUnZipFileProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 643
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->isDefaultDownloadStyle()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->isGameStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->sendRefreshUnzipPregress(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public reportLessonDownloadSuccess()V
    .locals 3

    .prologue
    .line 619
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 620
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCourseId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Download Success"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 622
    return-void
.end method

.method public resizeDownloadViewSize()V
    .locals 3

    .prologue
    const/16 v2, 0x46

    .line 740
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mContentContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    invoke-virtual {p0, v2, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    :cond_1
    return-void
.end method

.method protected sendRefreshUnzipPregress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 651
    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->lastProgress:I

    sub-int v2, p2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 652
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;

    int-to-long v2, p2

    invoke-direct {v1, p3, p1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 653
    .local v1, "obj":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPHandler:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 654
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 655
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 656
    iput p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->lastProgress:I

    .line 658
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "obj":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;
    :cond_0
    return-void
.end method

.method public setActionScriptId(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionScriptId"    # Ljava/lang/String;

    .prologue
    .line 713
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mActionScriptId:Ljava/lang/String;

    .line 714
    return-void
.end method

.method public setCallBack(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    .line 679
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 682
    .local p1, "downloadUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrls:Ljava/util/List;

    .line 683
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->md5DownloadUrls()V

    .line 684
    return-void
.end method

.method public setMcPcSubTaskTicket(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V
    .locals 0
    .param p1, "mcPcSubTaskTicket"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 142
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mType:I

    .line 213
    return-void
.end method

.method public showDownloadProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 795
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->isDefaultDownloadStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    invoke-virtual {v0, v1}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setVisibility(I)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->isGameStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    invoke-virtual {v0, v1}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->setVisibility(I)V

    .line 801
    :cond_1
    return-void
.end method

.method public showTextDefault()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTextDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTextDesc:Landroid/widget/TextView;

    const-string v1, "\u4e92\u52a8\u8bfe\u7a0b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    :cond_0
    return-void
.end method

.method public showTextDownloading()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTextDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTextDesc:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    :cond_0
    return-void
.end method

.method public showTextUnDownload()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTextDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTextDesc:Landroid/widget/TextView;

    const-string v1, "\u4e92\u52a8\u8bfe\u7a0b(\u672a\u8d2d\u4e70)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    :cond_0
    return-void
.end method

.method public startDownload()V
    .locals 5

    .prologue
    .line 168
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrls:Ljava/util/List;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getCurrentDownloadUrlIndex()I

    move-result v0

    .line 173
    .local v0, "currentDownloadUrlIndex":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUrls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCurrentDownloadUrl:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hasFinishedDownloadFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hasCompletedFinishedZipFile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hasSuccessTextFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPrepareInteractResViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCurrentDownloadUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getDownloadSaveFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->downloadRes()V

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->checkDownloadPackageRes()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->doAfterFinishedUnzipDownloadRes()V

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getSaveFileDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/i;->c(Ljava/io/File;)Z

    .line 195
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->downloadRes()V

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hasSuccessTextFile()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->checkDownloadPackageRes()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->doAfterFinishedUnzipDownloadRes()V

    goto :goto_0

    .line 204
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getSaveFileDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/i;->c(Ljava/io/File;)Z

    .line 205
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->downloadRes()V

    goto :goto_0
.end method

.method public startDownloadWithNotify()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v0

    .line 147
    .local v0, "networkType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->realDownload()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getNetWorkNotifyDialog()Lcom/jiliguala/niuwa/common/widget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/a;->a()V

    goto :goto_0

    .line 151
    :cond_2
    if-nez v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->enableInnerContainer()V

    .line 155
    :cond_3
    const-string v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopApng()V
    .locals 2

    .prologue
    .line 813
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/github/sahasbhop/a/a;->a(Landroid/view/View;)Lcom/github/sahasbhop/a/a;

    move-result-object v0

    .line 814
    .local v0, "apngDrawable":Lcom/github/sahasbhop/a/a;
    if-nez v0, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    invoke-virtual {v0}, Lcom/github/sahasbhop/a/a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    invoke-virtual {v0}, Lcom/github/sahasbhop/a/a;->stop()V

    goto :goto_0
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hasRegister:Z

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hasRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateNotifyText(Ljava/lang/String;)V
    .locals 1
    .param p1, "notifyText"    # Ljava/lang/String;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTipsView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    :cond_0
    return-void
.end method

.method public updateProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 460
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->isDefaultDownloadStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCircleProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setProgress(F)V

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->isGameStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/e/b;->a(FF)F

    move-result v0

    .line 465
    .local v0, "percent":F
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    invoke-virtual {v1, v0}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->setPercent(F)V

    .line 467
    .end local v0    # "percent":F
    :cond_1
    return-void
.end method

.method public updateStyle(I)V
    .locals 7
    .param p1, "style"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 400
    iput p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mStyle:I

    .line 401
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUIContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameDownloadContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :goto_0
    return-void

    .line 404
    :cond_0
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUIContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameDownloadContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 407
    invoke-static {}, Lcom/github/sahasbhop/a/b;->a()Lcom/github/sahasbhop/a/b;

    move-result-object v0

    const-string v1, "assets://apng/loader_baozi.png"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/github/sahasbhop/a/b$a;

    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/github/sahasbhop/a/b$a;-><init>(IZZ)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/sahasbhop/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/github/sahasbhop/a/b$a;)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mDownloadUIContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mGameDownloadContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTipsView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_0
    return-void
.end method

.method public updateUIOnlyShowProgress()V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTextDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mTextDesc:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hideDownloadProgress()V

    .line 736
    return-void
.end method

.method public updateUIToPaySuccessUI()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPlayBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->showTextDefault()V

    .line 773
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hideDownloadProgress()V

    .line 774
    return-void
.end method

.method public updateUIToUnPayView()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mPlayBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->showTextUnDownload()V

    .line 728
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->hideDownloadProgress()V

    .line 729
    return-void
.end method