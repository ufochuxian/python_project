.class public Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
.implements Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;,
        Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingExperienceManagerProvider;,
        Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;,
        Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
    }
.end annotation


# static fields
.field private static final PAGE_TURN_AUDIO_DELAY_MILLIS:I = 0x1f4

.field private static final PRELOAD_ARTWORK_COUNT:I = 0x4

.field public static PSP_PROMO_ENABLED:Z = false

.field private static final STATE_CURRENT_PAGE_NUMBER:Ljava/lang/String; = "current_page_number"

.field private static final STATE_IS_PRESENT:Ljava/lang/String; = "rem_state_is_present"

.field private static final STATE_PAUSED:Ljava/lang/String; = "paused"

.field private static final STATE_POSITION:Ljava/lang/String; = "position"

.field private static final STATE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final STATE_PSP_PROMO_SHOWN:Ljava/lang/String; = "psp_promo_shown"

.field private static final STATE_READING_MODE:Ljava/lang/String; = "reading_mode"

.field private static final STATE_READING_MODE_CHOSEN:Ljava/lang/String; = "reading_mode_chosen"

.field private static final TAG:Ljava/lang/String; = "REM"


# instance fields
.field private final mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

.field private mAdditionalFavoriteButton:Landroid/widget/ImageButton;
    .annotation build Lorg/b/a/e;
    .end annotation
.end field

.field private final mApplication:Lcom/jiliguala/niuwa/MyApplication;

.field private final mBook:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/internal/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPageNumber:I

.field private mLoadingOverlay:Landroid/widget/RelativeLayout;

.field private mLoadingText:Landroid/widget/TextView;

.field private mPSPPromoShown:Z

.field private mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;
    .annotation build Lorg/b/a/e;
    .end annotation
.end field

.field private mPaused:Z

.field private mPosition:I

.field private mPreloadingArtwork:Z

.field private mProgress:I

.field private mReadingMode:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

.field private mReadingModeButtonListener:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;

.field private mReadingModeChosen:Z

.field private mReadingModeIv:Landroid/widget/ImageView;

.field private final mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

.field private final mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

.field private final mStoryPreloader:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

.field private mToolbar:Landroid/view/View;

.field private mToolbarHeight:I

.field private mToolbarVisible:Z

.field private mTopBarOverLay:Landroid/view/View;

.field private mWaitingToPlayAudioForPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->PSP_PROMO_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param
    .param p2, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f09059b

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mBook:Ljava/util/ArrayList;

    .line 88
    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;-><init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$1;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeButtonListener:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;

    .line 99
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbarVisible:Z

    .line 100
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPreloadingArtwork:Z

    .line 104
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPaused:Z

    .line 105
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPSPPromoShown:Z

    .line 107
    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingMode:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    .line 114
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeChosen:Z

    .line 121
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPosition:I

    .line 128
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mProgress:I

    .line 136
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mCurrentPageNumber:I

    .line 150
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    .line 151
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getMyApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 152
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    .line 153
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/MyApplication;->getStoryAudioManager()Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .line 154
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-virtual {v2, p0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->addListener(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;)V

    .line 155
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->setPlayCancel(Z)V

    .line 157
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/MyApplication;->getOfflineManager()Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    move-result-object v2

    iget-object v3, p2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->touchStory(Lcom/jiliguala/niuwa/module/story/data/json/Story;)V

    .line 159
    if-eqz p4, :cond_0

    const-string v2, "rem_state_is_present"

    invoke-virtual {p4, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    .local v0, "statePresent":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 164
    const-string v1, "paused"

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPaused:Z

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPaused:Z

    .line 165
    const-string v1, "psp_promo_shown"

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPSPPromoShown:Z

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPSPPromoShown:Z

    .line 166
    const-string v1, "position"

    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPosition:I

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPosition:I

    .line 167
    const-string v1, "progress"

    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mProgress:I

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mProgress:I

    .line 168
    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->values()[Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    move-result-object v1

    const-string v2, "reading_mode"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingMode:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->ordinal()I

    move-result v3

    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingMode:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    .line 169
    const-string v1, "reading_mode_chosen"

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeChosen:Z

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeChosen:Z

    .line 170
    const-string v1, "current_page_number"

    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mCurrentPageNumber:I

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mCurrentPageNumber:I

    .line 182
    :goto_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->buildBook(Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;)V

    .line 184
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->connectToToolbar(Landroid/view/View;F)V

    .line 185
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->connectToReadingModeOverlay(Landroid/view/View;)V

    .line 186
    const v1, 0x7f0902ec

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->connectToLoadingOverlay(Landroid/widget/RelativeLayout;)V

    .line 187
    invoke-direct {p0, p3}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->connectToPageButtons(Landroid/view/View;)V

    .line 191
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-direct {v1, v2, p2, p0}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;-><init>(Lcom/jiliguala/niuwa/MyApplication;Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryPreloader:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    .line 192
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryPreloader:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->preloadArtwork()V

    .line 196
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryPreloader:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getCover()Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->preloadAudio(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    .line 198
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->autoPlayStart()V

    .line 199
    return-void

    .end local v0    # "statePresent":Z
    :cond_0
    move v0, v1

    .line 159
    goto/16 :goto_0

    .line 176
    .restart local v0    # "statePresent":Z
    :cond_1
    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;->OPEN:Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->sendReadEvent(Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;)V

    .line 177
    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->trackReadStart(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;)V

    .line 178
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/RecentManager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/story/data/RecentManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/story/data/RecentManager;->pushStory(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->onOfflineError()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->updateFavoriteButtons(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/MyApplication;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingMode:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->hideToolbar()V

    return-void
.end method

.method static synthetic access$902(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeChosen:Z

    return p1
.end method

.method private animateButtonToOpacity(Landroid/view/View;F)V
    .locals 4
    .param p1, "button"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 751
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 752
    return-void
.end method

.method private animateToolbarToYPosition(F)V
    .locals 6
    .param p1, "position"    # F

    .prologue
    .line 739
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v0

    .line 741
    .local v0, "currentPosition":F
    cmpl-float v3, v0, p1

    if-nez v3, :cond_0

    .line 748
    :goto_0
    return-void

    .line 744
    :cond_0
    sub-float v3, p1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 745
    .local v1, "distance":F
    iget v3, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbarHeight:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    .line 747
    .local v2, "pixelsPerSecond":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v1

    div-float/2addr v4, v2

    float-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private buildBook(Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPages()[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    move-result-object v0

    .line 247
    .local v0, "storyPages":[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mBook:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getCover()Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mBook:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPages()[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 251
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mBook:Ljava/util/ArrayList;

    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;-><init>(Lcom/jiliguala/niuwa/module/story/data/json/Story;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method private connectToLoadingOverlay(Landroid/widget/RelativeLayout;)V
    .locals 1
    .param p1, "overlayView"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mLoadingOverlay:Landroid/widget/RelativeLayout;

    .line 357
    const v0, 0x7f0902ef

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mLoadingText:Landroid/widget/TextView;

    .line 358
    return-void
.end method

.method private connectToPageButtons(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 363
    return-void
.end method

.method private connectToReadingModeOverlay(Landroid/view/View;)V
    .locals 2
    .param p1, "overlayView"    # Landroid/view/View;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mTopBarOverLay:Landroid/view/View;

    .line 351
    const v0, 0x7f0903c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeIv:Landroid/widget/ImageView;

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeButtonListener:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$a;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    return-void
.end method

.method private connectToToolbar(Landroid/view/View;F)V
    .locals 1
    .param p1, "toolbarView"    # Landroid/view/View;
    .param p2, "toolbarHeight"    # F

    .prologue
    .line 271
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbar:Landroid/view/View;

    .line 272
    float-to-int v0, p2

    iput v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbarHeight:I

    .line 316
    return-void
.end method

.method private getPositionPercentage()I
    .locals 2

    .prologue
    .line 925
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPosition:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPageCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private hideProgress()V
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mLoadingOverlay:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 765
    return-void
.end method

.method private hideToolbar()V
    .locals 2

    .prologue
    .line 721
    iget v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbarHeight:I

    neg-int v0, v1

    .line 732
    .local v0, "hidePosition":I
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->animateToolbarToYPosition(F)V

    .line 733
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbarVisible:Z

    .line 734
    return-void
.end method

.method private onOfflineError()V
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    :goto_0
    return-void

    .line 596
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->updateFavoriteButtons(Z)V

    .line 597
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Error saving saving"

    .line 598
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was a problem downloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    .line 600
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for offline reading. Please check your internet connection!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Try again"

    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;-><init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V

    .line 601
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$2;-><init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V

    .line 612
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private reportReadAgainAmplitude()V
    .locals 3

    .prologue
    .line 540
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 541
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "Title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Replay Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 544
    return-void
.end method

.method private sendReadEvent(Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;)V
    .locals 4
    .param p1, "type"    # Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getTelemetryManager()Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getPositionPercentage()I

    move-result v3

    invoke-direct {v1, v2, v3, p1}, Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent;-><init>(Lcom/jiliguala/niuwa/module/story/data/json/Story;ILcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->sendEvent(Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;)V

    .line 932
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showProgress(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mLoadingOverlay:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 761
    return-void
.end method

.method private showToolbar()V
    .locals 3

    .prologue
    .line 708
    const/4 v1, 0x0

    .line 711
    .local v1, "showPosition":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPage()Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v0

    .line 712
    .local v0, "currentPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    instance-of v2, v0, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;

    if-eqz v2, :cond_0

    .line 713
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbarHeight:I

    neg-int v1, v2

    .line 716
    :cond_0
    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->animateToolbarToYPosition(F)V

    .line 717
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbarVisible:Z

    .line 718
    return-void
.end method

.method private startPlayback(IZ)V
    .locals 3
    .param p1, "delayMillis"    # I
    .param p2, "always"    # Z

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPage()Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v0

    .line 388
    .local v0, "currentPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getReadingMode()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->READ_TO_ME:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getReadingMode()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    if-ne v1, v2, :cond_1

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryPreloader:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->preloadAllAudio()V

    .line 392
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryPreloader:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    move-object v1, v0

    check-cast v1, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->isPageAudioReady(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 398
    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .end local v0    # "currentPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mWaitingToPlayAudioForPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .line 399
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0115

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->showProgress(Ljava/lang/String;)V

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 404
    .restart local v0    # "currentPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .end local v0    # "currentPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    invoke-virtual {v1, v0, p1}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->play(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;I)V

    goto :goto_0
.end method

.method private toggleToolbar()V
    .locals 2

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mToolbarVisible:Z

    if-eqz v0, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->hideToolbar()V

    .line 699
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mTopBarOverLay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 705
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->showToolbar()V

    .line 702
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mTopBarOverLay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mTopBarOverLay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0
.end method

.method private updateFavoriteButtons(Z)V
    .locals 1
    .param p1, "isFavorited"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mAdditionalFavoriteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mAdditionalFavoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setActivated(Z)V

    .line 343
    :cond_0
    return-void
.end method

.method private updatePreviousNextButtonVisibility()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method private updateProgress(Lcom/jiliguala/niuwa/module/story/data/internal/Page;)V
    .locals 12
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 862
    const/4 v3, -0x1

    .line 863
    .local v3, "pageNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mBook:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 864
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getPage(I)Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v6

    if-ne p1, v6, :cond_0

    .line 865
    move v3, v0

    .line 863
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v6, v6, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPages()[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    move-result-object v5

    .line 872
    .local v5, "storyPages":[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    const/4 v4, -0x1

    .line 873
    .local v4, "storyPageNumber":I
    const/4 v0, 0x0

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 874
    aget-object v6, v5, v0

    if-ne p1, v6, :cond_2

    .line 875
    add-int/lit8 v4, v0, 0x1

    .line 873
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 879
    :cond_3
    if-gez v3, :cond_4

    .line 881
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Reader has turned to page that isn\'t present in the active \'book\'."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 884
    :cond_4
    iput v3, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mCurrentPageNumber:I

    .line 886
    if-gez v4, :cond_6

    .line 916
    :cond_5
    :goto_2
    return-void

    .line 892
    :cond_6
    iput v4, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPosition:I

    .line 894
    iget v6, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPosition:I

    iget v7, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mProgress:I

    if-le v6, v7, :cond_5

    .line 899
    iget v6, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mProgress:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v7, v7, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPageCount()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 900
    .local v2, "oldFraction":F
    iget v6, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPosition:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v7, v7, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPageCount()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 902
    .local v1, "newFraction":F
    iget v6, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPosition:I

    iput v6, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mProgress:I

    .line 904
    float-to-double v6, v2

    cmpg-double v6, v6, v8

    if-gez v6, :cond_7

    float-to-double v6, v1

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_7

    .line 905
    sget-object v6, Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;->MIDPOINT:Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->sendReadEvent(Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;)V

    .line 906
    sget-object v6, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v7, v7, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->trackReadMidpoint(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;)V

    .line 910
    :cond_7
    float-to-double v6, v2

    cmpg-double v6, v6, v10

    if-gez v6, :cond_5

    float-to-double v6, v1

    cmpl-double v6, v6, v10

    if-ltz v6, :cond_5

    .line 911
    sget-object v6, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v7, v7, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->trackReadFinish(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;)V

    goto :goto_2
.end method

.method private updateReadingModeOverlayVisibility()V
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPage()Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPreloadingArtwork:Z

    if-nez v0, :cond_0

    .line 505
    :cond_0
    return-void
.end method


# virtual methods
.method public autoPlayStart()V
    .locals 3

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPage()Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v0

    .line 367
    .local v0, "currentPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryPreloader:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    move-object v1, v0

    check-cast v1, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->isPageAudioReady(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .end local v0    # "currentPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mWaitingToPlayAudioForPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .line 374
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0115

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->showProgress(Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method public getCurrentPage()Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mBook:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mCurrentPageNumber:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    return-object v0
.end method

.method public getCurrentPageNumber()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mCurrentPageNumber:I

    return v0
.end method

.method public getIndex(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)I
    .locals 4
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 785
    const/4 v1, 0x0

    .line 787
    .local v1, "index":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mBook:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    .line 788
    .local v0, "bookPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    if-ne v0, p1, :cond_0

    .line 793
    .end local v0    # "bookPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 790
    .restart local v0    # "bookPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 791
    goto :goto_0

    .line 793
    .end local v0    # "bookPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPage(I)Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 781
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mBook:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mBook:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPager()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    return-object v0
.end method

.method public getReadingMode()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingMode:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    return-object v0
.end method

.method public getStoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStoryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextScale()F
    .locals 1

    .prologue
    .line 223
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public goToNextPage()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;->stopKeepingScreenOn()V

    .line 432
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getReadingMode()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    if-ne v0, v1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;->goToNextPage()V

    .line 436
    :cond_0
    return-void
.end method

.method public onAudioControlTouched(Z)V
    .locals 3
    .param p1, "onceButton"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 632
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPaused:Z

    .line 634
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->stopPlayback()V

    .line 635
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->updateAudioControl()V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPaused:Z

    .line 643
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPage()Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;

    if-eqz v0, :cond_2

    .line 644
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->READ_TO_ME:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->setReadingMode(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;)V

    .line 645
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeChosen:Z

    .line 647
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;->goToStart()V

    goto :goto_0

    .line 664
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->startPlayback(IZ)V

    goto :goto_0
.end method

.method public onExit()V
    .locals 3

    .prologue
    .line 686
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;->EXIT_STORY:Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->sendReadEvent(Lcom/jiliguala/niuwa/module/story/data/telemetry/ReadEvent$Type;)V

    .line 687
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getPositionPercentage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->trackReadStoryExit(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;I)V

    .line 688
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->removeListener(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;)V

    .line 689
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->setPlayCancel(Z)V

    .line 690
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->stop()V

    .line 691
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;->stopKeepingScreenOn()V

    .line 694
    :cond_0
    return-void
.end method

.method public onFavoriteTouched()V
    .locals 4

    .prologue
    .line 553
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getOfflineManager()Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    move-result-object v0

    .line 555
    .local v0, "offlineManager":Lcom/jiliguala/niuwa/module/story/data/OfflineManager;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->isAvailableOffline(Lcom/jiliguala/niuwa/module/story/data/json/Story;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->makeUnavailableOffline(Lcom/jiliguala/niuwa/module/story/data/json/Story;Landroid/content/Context;)V

    .line 557
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->updateFavoriteButtons(Z)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->isEnoughFreeSpace(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    new-instance v3, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$1;-><init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->makeAvailableOffline(Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 568
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->updateFavoriteButtons(Z)V

    goto :goto_0
.end method

.method public onPreloadArtwork(IIZ)V
    .locals 1
    .param p1, "preloaded"    # I
    .param p2, "total"    # I
    .param p3, "success"    # Z

    .prologue
    .line 817
    if-eqz p3, :cond_2

    .line 819
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPreloadingArtwork:Z

    if-eqz v0, :cond_1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 820
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPreloadingArtwork:Z

    .line 821
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->hideProgress()V

    .line 822
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->hideToolbar()V

    .line 823
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->updateReadingModeOverlayVisibility()V

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 827
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->hideProgress()V

    goto :goto_0
.end method

.method public onPreloadAudio(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;IIZ)V
    .locals 2
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;
    .param p2, "preloaded"    # I
    .param p3, "total"    # I
    .param p4, "success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 835
    if-eqz p4, :cond_0

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mWaitingToPlayAudioForPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    if-ne v0, p1, :cond_3

    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mWaitingToPlayAudioForPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .line 843
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->hideProgress()V

    .line 844
    if-eqz p4, :cond_2

    .line 845
    invoke-direct {p0, v1, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->startPlayback(IZ)V

    .line 856
    :cond_1
    :goto_0
    return-void

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mWaitingToPlayAudioForPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    if-eqz v0, :cond_1

    .line 849
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->setReadingMode(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;)V

    goto :goto_0

    .line 852
    :cond_3
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mCurrentPageNumber:I

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    if-eqz v0, :cond_1

    .line 854
    invoke-direct {p0, v1, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->startPlayback(IZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 675
    const-string v0, "reading_mode"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingMode:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 676
    const-string v0, "reading_mode_chosen"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeChosen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 677
    const-string v0, "paused"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPaused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 678
    const-string v0, "psp_promo_shown"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPSPPromoShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 679
    const-string v0, "position"

    iget v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 680
    const-string v0, "progress"

    iget v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 681
    const-string v0, "current_page_number"

    iget v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mCurrentPageNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 682
    const-string v0, "rem_state_is_present"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 683
    return-void
.end method

.method public onScreenCenterTapped()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->toggleToolbar()V

    .line 672
    return-void
.end method

.method public onShareTouched()V
    .locals 4

    .prologue
    .line 320
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;->BOOK:Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getPositionPercentage()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->trackShareStarted(Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;I)V

    .line 336
    return-void
.end method

.method public onStartOverTouched()V
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->stopPlayback()V

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingModeChosen:Z

    .line 530
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mTopBarOverLay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;->goToStart()V

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->reportReadAgainAmplitude()V

    .line 537
    return-void
.end method

.method public onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 0
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 453
    return-void
.end method

.method public onStoryAudioPlaybackComplete(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 2
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;->stopKeepingScreenOn()V

    .line 444
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getReadingMode()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;->AUTO_PLAY:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    if-ne v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;->goToNextPage()V

    .line 448
    :cond_0
    return-void
.end method

.method public onStoryAudioPlaybackStarted(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 1
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;->keepScreenOn()V

    .line 427
    :cond_0
    return-void
.end method

.method public readerWillShowPage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getPage(I)Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->readerWillShowPage(Lcom/jiliguala/niuwa/module/story/data/internal/Page;)V

    .line 457
    return-void
.end method

.method public readerWillShowPage(Lcom/jiliguala/niuwa/module/story/data/internal/Page;)V
    .locals 3
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPage()Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v0

    .line 462
    .local v0, "previousPage":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->updateProgress(Lcom/jiliguala/niuwa/module/story/data/internal/Page;)V

    .line 467
    if-eq p1, v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->stopPlayback()V

    .line 469
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPaused:Z

    if-nez v1, :cond_0

    .line 470
    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->startPlayback(IZ)V

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->updateReadingModeOverlayVisibility()V

    .line 475
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->updatePreviousNextButtonVisibility()V

    .line 477
    instance-of v1, p1, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;

    if-eqz v1, :cond_1

    .line 479
    invoke-static {}, Lcom/jiliguala/niuwa/module/story/helpers/FlavorHelper;->isRatingsRequestsAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->hideToolbar()V

    .line 494
    return-void
.end method

.method public setAdditionalFavoriteButton(Landroid/widget/ImageButton;)V
    .locals 1
    .param p1, "additionalFavoriteButton"    # Landroid/widget/ImageButton;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mAdditionalFavoriteButton:Landroid/widget/ImageButton;

    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mAdditionalFavoriteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 235
    :cond_0
    return-void
.end method

.method public setPager(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;)V
    .locals 0
    .param p1, "pager"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    .line 813
    return-void
.end method

.method public setReadingMode(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;)V
    .locals 0
    .param p1, "readingMode"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mReadingMode:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingMode;

    .line 243
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->stop()V

    .line 417
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->mPager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$Pager;->stopKeepingScreenOn()V

    .line 420
    :cond_0
    return-void
.end method

.method public updateAudioControl()V
    .locals 0

    .prologue
    .line 756
    return-void
.end method
