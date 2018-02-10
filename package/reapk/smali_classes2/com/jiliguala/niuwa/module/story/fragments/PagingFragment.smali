.class public Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;
.super Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;
.implements Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;,
        Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$b;,
        Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;,
        Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CANONICAL_PAGE_RATIO:F = 0.6604f

.field public static final COVER_NUMBER:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sGarbageCollector:Ljava/lang/Runnable;


# instance fields
.field private mArtworkManager:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

.field private mAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentPage:I

.field private mDestinationPage:I

.field private mImageLoader:Lcom/android/volley/toolbox/k;

.field private mIsLandscape:Z

.field private mLayout:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPagePileLeft:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

.field private mPagePileRight:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

.field private mPageTurnAnimation:Lcom/nineoldandroids/a/q;

.field private mPageTurnFraction:F

.field private mReadAgain:Landroid/widget/ImageView;

.field private mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

.field private mTextScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->$assertionsDisabled:Z

    .line 65
    const-class v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->sGarbageCollector:Ljava/lang/Runnable;

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;-><init>()V

    .line 95
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnFraction:F

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 54
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mDestinationPage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/android/volley/toolbox/k;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mImageLoader:Lcom/android/volley/toolbox/k;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isLandscape()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;Lcom/nineoldandroids/a/q;)Lcom/nineoldandroids/a/q;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;
    .param p1, "x1"    # Lcom/nineoldandroids/a/q;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnAnimation:Lcom/nineoldandroids/a/q;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->broadcastEndMusic()V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isPage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mArtworkManager:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    .prologue
    .line 54
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mTextScale:F

    return v0
.end method

.method private broadcastEndMusic()V
    .locals 7

    .prologue
    .line 505
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 508
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 511
    :goto_0
    const/4 v6, 0x0

    .line 513
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 514
    if-nez v6, :cond_1

    .line 523
    if-eqz v6, :cond_0

    .line 524
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 542
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_1
    return-void

    .line 517
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 518
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    if-eqz v6, :cond_2

    .line 524
    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 530
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$4;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_1

    .line 519
    :catch_0
    move-exception v0

    .line 523
    if-eqz v6, :cond_2

    .line 524
    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 526
    :catch_1
    move-exception v0

    goto :goto_2

    .line 522
    :catchall_0
    move-exception v0

    .line 523
    if-eqz v6, :cond_3

    .line 524
    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 527
    :cond_3
    :goto_3
    throw v0

    .line 526
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_3

    .line 509
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method private clamp(FFF)F
    .locals 1
    .param p1, "value"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 482
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private doPageTurnAnimation(FFJ)V
    .locals 1
    .param p1, "startFraction"    # F
    .param p2, "destFraction"    # F
    .param p3, "duration"    # J

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->setPageTurnFraction(F)V

    .line 303
    invoke-direct {p0, p2, p3, p4}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->doPageTurnAnimation(FJ)V

    .line 304
    return-void
.end method

.method private doPageTurnAnimation(FJ)V
    .locals 4
    .param p1, "destFraction"    # F
    .param p2, "duration"    # J

    .prologue
    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    iget v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mDestinationPage:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->readerWillShowPage(I)V

    .line 317
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getPageTurnFraction()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Lcom/nineoldandroids/a/q;->b([F)Lcom/nineoldandroids/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnAnimation:Lcom/nineoldandroids/a/q;

    .line 318
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnAnimation:Lcom/nineoldandroids/a/q;

    invoke-virtual {v0, p2, p3}, Lcom/nineoldandroids/a/q;->d(J)Lcom/nineoldandroids/a/q;

    .line 319
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnAnimation:Lcom/nineoldandroids/a/q;

    new-instance v1, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$2;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a(Lcom/nineoldandroids/a/q$b;)V

    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnAnimation:Lcom/nineoldandroids/a/q;

    new-instance v1, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$3;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnAnimation:Lcom/nineoldandroids/a/q;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/q;->a()V

    .line 353
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 182
    return-void
.end method

.method private isLandscape()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mIsLandscape:Z

    return v0
.end method

.method private isPage(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateToPageView(I)V
    .locals 8
    .param p1, "pageIndex"    # I

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    .line 190
    iget v6, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    if-ne p1, v6, :cond_0

    .line 221
    :goto_0
    return-void

    .line 193
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mDestinationPage:I

    .line 196
    iget v6, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mDestinationPage:I

    iget v7, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    if-le v6, v7, :cond_2

    const/4 v0, 0x1

    .line 198
    .local v0, "animateForwards":Z
    :goto_1
    if-eqz v0, :cond_3

    const-wide/16 v2, 0xc8

    .line 202
    .local v2, "duration":J
    :goto_2
    if-eqz v0, :cond_4

    .line 203
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileLeft:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    iget v7, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mDestinationPage:I

    invoke-interface {v6, v7}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;->b(I)V

    .line 204
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileRight:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    iget v7, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mDestinationPage:I

    invoke-interface {v6, v7}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;->a(I)V

    .line 212
    :goto_3
    const/4 v4, 0x0

    .line 213
    .local v4, "startFraction":F
    if-eqz v0, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    .line 214
    .local v1, "destFraction":F
    :goto_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isLandscape()Z

    move-result v6

    if-nez v6, :cond_1

    .line 215
    if-eqz v0, :cond_6

    const/4 v4, 0x0

    .line 217
    :goto_5
    if-eqz v0, :cond_7

    const v1, 0x3f19999a    # 0.6f

    .line 220
    :cond_1
    :goto_6
    invoke-direct {p0, v4, v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->doPageTurnAnimation(FFJ)V

    goto :goto_0

    .line 196
    .end local v0    # "animateForwards":Z
    .end local v1    # "destFraction":F
    .end local v2    # "duration":J
    .end local v4    # "startFraction":F
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 198
    .restart local v0    # "animateForwards":Z
    :cond_3
    const-wide/16 v2, 0x190

    goto :goto_2

    .line 206
    .restart local v2    # "duration":J
    :cond_4
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileLeft:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    iget v7, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mDestinationPage:I

    invoke-interface {v6, v7}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;->a(I)V

    .line 207
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileRight:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    iget v7, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mDestinationPage:I

    invoke-interface {v6, v7}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;->b(I)V

    goto :goto_3

    .restart local v4    # "startFraction":F
    :cond_5
    move v1, v5

    .line 213
    goto :goto_4

    .line 215
    .restart local v1    # "destFraction":F
    :cond_6
    const/high16 v4, -0x41000000    # -0.5f

    goto :goto_5

    :cond_7
    move v1, v5

    .line 217
    goto :goto_6
.end method

.method public getPageTurnFraction()F
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnFraction:F

    return v0
.end method

.method public goToNextPage()V
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->animateToPageView(I)V

    .line 228
    :cond_0
    return-void
.end method

.method public goToPage(I)V
    .locals 0
    .param p1, "pageNumber"    # I

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->animateToPageView(I)V

    .line 240
    return-void
.end method

.method public goToPageView(I)V
    .locals 4
    .param p1, "pageIndex"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    .line 266
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileLeft:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;->c(I)V

    .line 267
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileRight:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;->c(I)V

    .line 269
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mLayout:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->setInterceptTouchMode(Z)V

    .line 277
    const/high16 v1, 0x7fc00000    # NaNf

    iput v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnFraction:F

    .line 279
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->setPageTurnFraction(F)V

    .line 284
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 285
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 286
    sget-object v1, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->sGarbageCollector:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    :cond_0
    return-void
.end method

.method public goToPreviousPage()V
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->animateToPageView(I)V

    .line 235
    :cond_0
    return-void
.end method

.method public goToStart()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->animateToPageView(I)V

    .line 245
    return-void
.end method

.method public keepScreenOn()V
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 250
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 126
    instance-of v0, p1, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingExperienceManagerProvider;

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingExperienceManagerProvider;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-interface {p1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingExperienceManagerProvider;->getReadingExperienceManager()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->setPager(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;)V

    .line 135
    return-void

    .line 133
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The activity must provide a ReadingExperienceManager to PagingFragment via the ReadingExperienceManagerProvider interface.(Otherwise the PagingFragment doesn\'t know what story to display)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0903bc

    const/4 v3, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getMyApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v0

    .line 141
    .local v0, "app":Lcom/jiliguala/niuwa/MyApplication;
    if-nez v0, :cond_0

    .line 142
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t get application in PagingFragment#onCreateView()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mIsLandscape:Z

    .line 147
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mContainer:Landroid/view/ViewGroup;

    .line 149
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getVolleyManager()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->getThumbnailImageLoader()Lcom/android/volley/toolbox/k;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mImageLoader:Lcom/android/volley/toolbox/k;

    .line 150
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getStoryAudioManager()Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .line 151
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getArtworkManager()Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mArtworkManager:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    .line 153
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getTextScale()F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mTextScale:F

    .line 155
    const v2, 0x7f0b00bf

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mLayout:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

    .line 156
    sget-boolean v2, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mLayout:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    move v2, v3

    .line 145
    goto :goto_0

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mLayout:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

    invoke-virtual {v2, p0}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->setListener(Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView$PanListener;)V

    .line 159
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->init()V

    .line 161
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    new-instance v3, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mLayout:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

    const v4, 0x7f0903bb

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v4, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->LEFT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    invoke-direct {v3, p0, v2, v4}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;Landroid/view/ViewGroup;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileLeft:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    .line 163
    new-instance v3, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mLayout:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v4, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->RIGHT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    invoke-direct {v3, p0, v2, v4}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;Landroid/view/ViewGroup;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileRight:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    .line 169
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPageNumber()I

    move-result v1

    .line 171
    .local v1, "initialPage":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->readerWillShowPage(I)V

    .line 172
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->goToPageView(I)V

    .line 175
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mLayout:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->listenForGlobalLayout(Landroid/view/View;)V

    .line 177
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mLayout:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

    return-object v2

    .line 165
    .end local v1    # "initialPage":I
    :cond_3
    new-instance v2, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$b;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$1;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileLeft:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    .line 166
    new-instance v3, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mLayout:Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/story/views/HorizontalPanView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v4, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->COMBINED:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    invoke-direct {v3, p0, v2, v4}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;Landroid/view/ViewGroup;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileRight:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    goto :goto_1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 548
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment;->onDetach()V

    .line 549
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 556
    :cond_0
    return-void

    .line 553
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    throw v0
.end method

.method public onDidLayOutFirstTime()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileLeft:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;->a()V

    .line 293
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileRight:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;->a()V

    .line 294
    return-void
.end method

.method public onPanChanged(F)V
    .locals 9
    .param p1, "dragDistance"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    .line 417
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v0, p1, v1

    .line 421
    .local v0, "percentage":F
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    float-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-float v0, v2

    .line 423
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 424
    float-to-double v2, v0

    sub-double/2addr v2, v6

    double-to-float v0, v2

    .line 428
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isPage(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    invoke-direct {p0, v0, v4, v8}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->clamp(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->setPageTurnFraction(F)V

    .line 437
    :goto_0
    return-void

    .line 431
    :cond_1
    iget v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isPage(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 433
    invoke-direct {p0, v0, v5, v4}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->clamp(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->setPageTurnFraction(F)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-direct {p0, v0, v5, v8}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->clamp(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->setPageTurnFraction(F)V

    goto :goto_0
.end method

.method public onPanFinished(F)V
    .locals 8
    .param p1, "velocity"    # F

    .prologue
    const/4 v6, 0x0

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "destFraction":I
    const-wide/16 v2, 0x190

    .line 359
    .local v2, "duration":J
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 360
    .local v1, "threshold":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_7

    .line 362
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 363
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getPageTurnFraction()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 364
    const/4 v0, 0x1

    .line 399
    :cond_0
    :goto_0
    iget v4, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isPage(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 400
    const/4 v0, 0x0

    .line 404
    :cond_1
    iget v4, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/2addr v4, v0

    if-gez v4, :cond_2

    .line 405
    const/4 v0, 0x0

    .line 408
    :cond_2
    iget v4, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mDestinationPage:I

    .line 412
    int-to-float v4, v0

    invoke-direct {p0, v4, v2, v3}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->doPageTurnAnimation(FJ)V

    .line 413
    return-void

    .line 365
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getPageTurnFraction()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 366
    const/4 v0, -0x1

    goto :goto_0

    .line 368
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getPageTurnFraction()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    .line 373
    const/4 v0, 0x1

    .line 374
    const-wide/16 v2, 0xc8

    goto :goto_0

    .line 375
    :cond_6
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getPageTurnFraction()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, -0x4036666666666666L    # -0.2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 376
    const/4 v0, -0x1

    goto :goto_0

    .line 382
    :cond_7
    cmpg-float v4, p1, v6

    if-gez v4, :cond_8

    .line 384
    iget v4, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnFraction:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 385
    const/4 v0, 0x1

    .line 386
    const-wide/16 v2, 0xc8

    goto :goto_0

    .line 390
    :cond_8
    iget v4, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnFraction:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_9

    .line 391
    const/4 v0, -0x1

    goto :goto_0

    .line 393
    :cond_9
    const-wide/16 v2, 0xc8

    goto :goto_0
.end method

.method public onTap(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 441
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v0, v2

    .line 442
    .local v0, "layoutWidth":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 444
    .local v1, "pageTurnZoneWidth":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isPage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->animateToPageView(I)V

    .line 451
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v3, v0, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->isPage(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->animateToPageView(I)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->onScreenCenterTapped()V

    goto :goto_0
.end method

.method public onTouchStarted()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnAnimation:Lcom/nineoldandroids/a/q;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnAnimation:Lcom/nineoldandroids/a/q;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/q;->b()V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnAnimation:Lcom/nineoldandroids/a/q;

    .line 458
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mDestinationPage:I

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->goToPageView(I)V

    .line 460
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->onPanChanged(F)V

    .line 461
    return-void
.end method

.method public setPageTurnFraction(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 468
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnFraction:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPageTurnFraction:F

    .line 472
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileLeft:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;->a(F)V

    .line 473
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->mPagePileRight:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;->a(F)V

    goto :goto_0
.end method

.method public stopKeepingScreenOn()V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
