.class public Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;
.super Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

.field private mFinishBtnBg:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private final mImageLoader:Lcom/android/volley/toolbox/k;

.field private final mPostStoryPage:Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;

.field private final mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

.field private final mRecommendedBooksGrid:Landroid/widget/GridView;
    .annotation build Lorg/b/a/e;
    .end annotation
.end field

.field private mSubscription:Lrx/i/b;

.field private final mYouMayAlsoEnjoyReading:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;Lcom/android/volley/toolbox/k;Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V
    .locals 11
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param
    .param p2, "imageLoader"    # Lcom/android/volley/toolbox/k;
    .param p3, "artworkManager"    # Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;
    .param p4, "postStoryPage"    # Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;
    .param p5, "readingExperienceManager"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
    .param p6, "kind"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .prologue
    .line 84
    move-object/from16 v0, p6

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V

    .line 76
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    .line 86
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mImageLoader:Lcom/android/volley/toolbox/k;

    .line 87
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mPostStoryPage:Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;

    .line 88
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .line 90
    const v9, 0x7f0900d9

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, "feedbackButton":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_0
    const v9, 0x7f0900da

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 97
    .local v4, "getReaderButton":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 98
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_1
    const v9, 0x7f0900db

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 103
    .local v5, "infoButton":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 104
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_2
    const v9, 0x7f0903ff

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, "buttonsView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 110
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_3
    const v9, 0x7f090430

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 113
    .local v6, "readAgain":Landroid/view/View;
    if-eqz v6, :cond_4

    .line 114
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_4
    const v9, 0x7f090436

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/GridView;

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mRecommendedBooksGrid:Landroid/widget/GridView;

    .line 149
    const v9, 0x7f090576

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mYouMayAlsoEnjoyReading:Landroid/view/View;

    .line 151
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mYouMayAlsoEnjoyReading:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 153
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mYouMayAlsoEnjoyReading:Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_5
    const v9, 0x7f090532

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 171
    .local v7, "storyFinishBtn":Landroid/view/View;
    if-eqz v7, :cond_6

    .line 172
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :cond_6
    const v9, 0x7f0900b0

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 176
    .local v1, "bookTitle":Landroid/widget/TextView;
    if-eqz v1, :cond_7

    .line 177
    invoke-virtual {p4}, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;->getStory()Lcom/jiliguala/niuwa/module/story/data/json/Story;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_7
    const v9, 0x7f090538

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 182
    .local v8, "storyThumb":Landroid/widget/ImageView;
    if-eqz v8, :cond_8

    .line 184
    invoke-virtual {p4}, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;->getStory()Lcom/jiliguala/niuwa/module/story/data/json/Story;

    move-result-object v9

    .line 185
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getCoverArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v9

    new-instance v10, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$1;

    invoke-direct {v10, p0, v8, p1}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$1;-><init>(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;Landroid/widget/ImageView;Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;)V

    .line 184
    invoke-virtual {p3, v9, v10}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->get(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    .line 198
    :cond_8
    const v9, 0x7f090204

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mFinishBtnBg:Landroid/widget/ImageView;

    .line 200
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mFinishBtnBg:Landroid/widget/ImageView;

    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/a;->f(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Lrx/i/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mSubscription:Lrx/i/b;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->cancelSubCourse()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 350
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 351
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
    .line 355
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    .line 356
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 357
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 358
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 359
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    .line 361
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 364
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mSubscription:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mSubscription:Lrx/i/b;

    .line 369
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mSubscription:Lrx/i/b;

    return-object v0
.end method

.method private reportServer(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 373
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/a/a;->a()Lcom/jiliguala/niuwa/logic/network/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    .line 374
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getResourceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stories"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/jiliguala/niuwa/logic/network/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 375
    return-void
.end method


# virtual methods
.method protected getLeftLayout()I
    .locals 1

    .prologue
    .line 205
    const v0, 0x7f0b0164

    return v0
.end method

.method protected getPortraitLayout()I
    .locals 1

    .prologue
    .line 215
    const v0, 0x7f0b0164

    return v0
.end method

.method protected getRightLayout()I
    .locals 1

    .prologue
    .line 210
    const v0, 0x7f0b0164

    return v0
.end method

.method public onAttach()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->onAttach()V

    .line 386
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f090430

    if-ne v5, v6, :cond_0

    .line 270
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->onStartOverTouched()V

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0900da

    if-ne v5, v6, :cond_1

    .line 274
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/story/helpers/GetReaderHelper;->getOrOpenReader(Landroid/app/Activity;)V

    .line 277
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0900db

    if-ne v5, v6, :cond_2

    .line 278
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.intuary.farfaria.onebook.OneBookPromoActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 279
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "fullscreen"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-virtual {v5, v2}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 283
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f090532

    if-ne v5, v6, :cond_3

    .line 284
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 285
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->reportServer(Landroid/view/View;)V

    .line 286
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "bid":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getCourseid()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "courseId":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getSubtaskid()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "subTaskId":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->isFromPractice()Z

    move-result v3

    .line 294
    .local v3, "isFromPractice":Z
    if-eqz v3, :cond_4

    .line 295
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->getSubscriptions()Lrx/i/b;

    move-result-object v5

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v6

    .line 296
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v6

    const/4 v7, 0x0

    .line 297
    invoke-direct {p0, v0, v1, v4, v7}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v6

    .line 298
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v6

    .line 299
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v6

    .line 300
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v6

    new-instance v7, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;

    invoke-direct {v7, p0, p1, v4}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView$2;-><init>(Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;Landroid/view/View;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v6, v7}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v6

    .line 295
    invoke-virtual {v5, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 347
    .end local v0    # "bid":Ljava/lang/String;
    .end local v1    # "courseId":Ljava/lang/String;
    .end local v3    # "isFromPractice":Z
    .end local v4    # "subTaskId":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 343
    .restart local v0    # "bid":Ljava/lang/String;
    .restart local v1    # "courseId":Ljava/lang/String;
    .restart local v3    # "isFromPractice":Z
    .restart local v4    # "subTaskId":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    .line 344
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    check-cast v5, Lcom/jiliguala/niuwa/module/story/StoryActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->exitWithShare()V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->onDetach()V

    .line 401
    return-void
.end method

.method public onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 0
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 421
    return-void
.end method

.method public onStoryAudioPlaybackComplete(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 0
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 416
    return-void
.end method

.method public onStoryAudioPlaybackStarted(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 0
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 411
    return-void
.end method

.method public openStory(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V
    .locals 3
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;->mActivity:Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;->EOB_RECOMMENDED:Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->openStory(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public shouldPillarbox()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method
