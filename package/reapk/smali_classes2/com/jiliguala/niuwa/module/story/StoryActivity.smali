.class public Lcom/jiliguala/niuwa/module/story/StoryActivity;
.super Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;
.implements Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingExperienceManagerProvider;
.implements Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;",
        "Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$ReadingExperienceManagerProvider;",
        "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;",
        "Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final PARAM_STORY_FROM_COURSE:Ljava/lang/String; = "PARAM_STORY_FROM_COURSE"

.field public static final RESULT_USER_EXITED_FROM_TAKEOVER:I = 0x3333

.field private static final STATE_STORY_ID:Ljava/lang/String; = "story_id"


# instance fields
.field private isPaused:Z

.field private isStoryWaitingForResume:Z

.field private mIsCourseFinished:Z

.field private mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

.field public mStoryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isPaused:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isStoryWaitingForResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/StoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/StoryActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->performExit()V

    return-void
.end method

.method private checkMemory()V
    .locals 12

    .prologue
    .line 402
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    .line 403
    .local v6, "max_heap":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 404
    .local v2, "current_heap":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    .line 405
    .local v4, "free_heap":J
    sub-long v0, v2, v4

    .line 407
    .local v0, "actual_used":J
    long-to-double v8, v0

    long-to-double v10, v6

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getMyApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/MyApplication;->getVolleyManager()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->purgeInMemoryImageCache()V

    .line 412
    :cond_0
    return-void
.end method

.method private doDirectlyShare()V
    .locals 8

    .prologue
    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    if-eqz v1, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;

    move-result-object v0

    .line 677
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getCoverThumbUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->get_id()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v0 .. v7}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;

    .line 678
    new-instance v1, Lcom/jiliguala/niuwa/module/story/StoryActivity$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity$4;-><init>(Lcom/jiliguala/niuwa/module/story/StoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->setOnDismissListener(Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;)V

    .line 684
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;->show(Landroid/support/v4/app/ag;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment;
    :cond_0
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getFixedStoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method private performExit()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->stopPlayback()V

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->finish()V

    .line 578
    const/4 v0, 0x0

    const v1, 0x7f010026

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->overridePendingTransition(II)V

    .line 579
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 652
    return-void
.end method

.method public confirmExit()V
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isFromPractice:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->sendCourseTaskExitReport()V

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->performExit()V

    .line 613
    return-void
.end method

.method public courseFinish()V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mIsCourseFinished:Z

    .line 571
    return-void
.end method

.method public exitWithShare()V
    .locals 3

    .prologue
    .line 559
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 560
    .local v0, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    if-eqz v1, :cond_0

    .line 562
    const-string v1, "Title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Read Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 566
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->doDirectlyShare()V

    .line 567
    return-void
.end method

.method public getReadingExperienceManager()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    return-object v0
.end method

.method public loadStory(Ljava/lang/String;)V
    .locals 3
    .param p1, "storyId"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getMyApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getLiveDataManager()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    move-result-object v0

    const-class v1, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;

    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->makeParams(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->registerForLiveData(Ljava/lang/Class;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    .line 320
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 547
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mIsCourseFinished:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isFromPractice:Z

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    move-result-object v0

    .line 549
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 553
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->performExit()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 597
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 605
    :goto_0
    return-void

    .line 599
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->onBackPressed()V

    goto :goto_0

    .line 602
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->shareStory()V

    goto :goto_0

    .line 597
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090038 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    .line 74
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->checkMemory()V

    .line 81
    const/4 v5, 0x0

    invoke-super {p0, v5}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 87
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getFixedStoryId()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "fixedStoryId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 96
    move-object v4, v1

    .line 127
    .local v4, "storyId":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 129
    const v5, 0x7f0b0044

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->setContentView(I)V

    .line 131
    if-eqz p1, :cond_5

    .line 136
    const-string v5, "story_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "savedStoryId":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->finish()V

    .line 166
    .end local v2    # "savedStoryId":Ljava/lang/String;
    .end local v4    # "storyId":Ljava/lang/String;
    :goto_0
    return-void

    .line 98
    :cond_1
    if-eqz v0, :cond_3

    .line 101
    const-string v5, "rid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .restart local v4    # "storyId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "PARAM_COURSE_TICKET"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 103
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v5, :cond_2

    .line 104
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getResourceId()Ljava/lang/String;

    move-result-object v4

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "PARAM_STORY_FROM_COURSE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isFromPractice:Z

    .line 107
    if-nez v4, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->finish()V

    goto :goto_0

    .line 122
    .end local v4    # "storyId":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->finish()V

    goto :goto_0

    .line 149
    .restart local v2    # "savedStoryId":Ljava/lang/String;
    .restart local v4    # "storyId":Ljava/lang/String;
    :cond_4
    move-object v4, v2

    .line 153
    .end local v2    # "savedStoryId":Ljava/lang/String;
    :cond_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "rid"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "FROM_ONCREATE"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 155
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v3

    .line 166
    .local v3, "screenSize":Landroid/graphics/Point;
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 377
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->onDestroy()V

    .line 378
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getMyApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getLiveDataManager()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->unregisterForLiveData(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    .line 380
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->onExit()V

    .line 386
    :cond_0
    return-void
.end method

.method public onExitTouched(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->finish()V

    .line 392
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->initialize(Landroid/content/Context;)V

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 184
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 178
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->lowerVolume()V

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->raiseVolume()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;Ljava/lang/Exception;)V

    return-void
.end method

.method public onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "op"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->finish()V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00c8

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0061

    .line 527
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/story/StoryActivity$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity$3;-><init>(Lcom/jiliguala/niuwa/module/story/StoryActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0064

    .line 532
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/story/StoryActivity$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity$2;-><init>(Lcom/jiliguala/niuwa/module/story/StoryActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public bridge synthetic onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;

    check-cast p2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;)V

    return-void
.end method

.method public onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;)V
    .locals 2
    .param p1, "op"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;
    .param p2, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    .prologue
    const/4 v1, 0x1

    .line 504
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    .line 505
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 509
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isPaused:Z

    if-eqz v0, :cond_0

    .line 510
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isStoryWaitingForResume:Z

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->showStory()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->setIntent(Landroid/content/Intent;)V

    .line 262
    const v4, 0x7f0902ec

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 263
    .local v1, "loadingOverlay":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const v4, 0x7f0902ef

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 265
    .local v2, "loadingText":Landroid/widget/TextView;
    const v4, 0x7f0f0115

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v3, 0x0

    .line 269
    .local v3, "storyId":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 270
    const-string v4, "rid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    :cond_0
    if-nez v3, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getFixedStoryId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 277
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getFixedStoryId()Ljava/lang/String;

    move-result-object v3

    .line 284
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getFixedStoryId()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "fixedStoryId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 286
    move-object v3, v0

    .line 293
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v5, "story_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 294
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 309
    :cond_3
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStoryId:Ljava/lang/String;

    .line 310
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/jiliguala/niuwa/module/story/StoryActivity$1;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity$1;-><init>(Lcom/jiliguala/niuwa/module/story/StoryActivity;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    return-void

    .line 279
    .end local v0    # "fixedStoryId":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->onPause()V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isPaused:Z

    .line 343
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getMyApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getStoryAudioManager()Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->pause()V

    .line 349
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->onResume()V

    .line 325
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isPaused:Z

    .line 327
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isStoryWaitingForResume:Z

    if-eqz v0, :cond_1

    .line 328
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isStoryWaitingForResume:Z

    .line 329
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->showStory()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getReadingExperienceManager()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getMyApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getStoryAudioManager()Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getReadingExperienceManager()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPage()Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->resume(Lcom/jiliguala/niuwa/module/story/data/internal/Page;)Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 355
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStoryId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "story_id"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStoryId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public sendCourseTaskExitReport()V
    .locals 4

    .prologue
    .line 616
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPageCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    if-eqz v1, :cond_0

    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 618
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v2, "Step"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .line 622
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPageNumber()I

    move-result v1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPageCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 621
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v1, "Time"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 627
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void

    .line 622
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .line 623
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPageNumber()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public shareStory()V
    .locals 7

    .prologue
    .line 630
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    if-eqz v1, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 632
    .local v0, "dialogFragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u548c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u8bfb\u4e86\u300c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u300d\u7ed8\u672c\uff01"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "shareTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getCoverThumbUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->get_id()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 634
    const-string v1, "read"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSource(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 640
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 641
    .local v6, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStoryId:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    if-eqz v1, :cond_0

    .line 643
    const-string v1, "Title"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v3, "Read Share Dialog"

    invoke-virtual {v1, v3, v6}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 647
    .end local v0    # "dialogFragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    .end local v2    # "shareTitle":Ljava/lang/String;
    .end local v6    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public showStory()V
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/4 v9, -0x2

    const v8, 0x7f090038

    const/4 v5, 0x0

    .line 415
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->checkMemory()V

    .line 417
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    if-nez v4, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->onBackPressed()V

    .line 444
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    if-eqz v4, :cond_3

    .line 445
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->onExit()V

    .line 448
    :cond_3
    new-instance v2, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;-><init>()V

    .line 450
    .local v2, "pagingFragment":Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const/high16 v6, 0x7f020000

    const v7, 0x7f020001

    invoke-virtual {v4, v6, v7}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v4

    const v6, 0x7f0903c6

    .line 451
    invoke-virtual {v4, v6, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 466
    const v4, 0x7f090014

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isFromPractice:Z

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 468
    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    const v4, 0x7f0903c1

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, "flipSwitcher":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 472
    .local v3, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->isFromPractice:Z

    if-eqz v4, :cond_6

    .line 473
    if-eqz v3, :cond_4

    .line 474
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 475
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 476
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    :cond_4
    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 493
    new-instance v4, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    const v6, 0x7f090480

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;-><init>(Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .line 495
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getMyApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/MyApplication;->getStoryAudioManager()Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->getReadingExperienceManager()Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getCurrentPage()Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->resume(Lcom/jiliguala/niuwa/module/story/data/internal/Page;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 496
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->updateAudioControl()V

    goto/16 :goto_0

    .end local v0    # "flipSwitcher":Landroid/view/View;
    .end local v3    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    move v4, v5

    .line 467
    goto :goto_1

    .line 479
    .restart local v0    # "flipSwitcher":Landroid/view/View;
    .restart local v3    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 480
    .restart local v3    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 481
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 482
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 483
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 488
    .local v1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ID"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity;->mStoryId:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v6, "Read View"

    invoke-virtual {v4, v6, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method
