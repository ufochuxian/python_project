.class public Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;
.implements Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;
.implements Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;",
        ">;",
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field protected mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

.field private mRootView:Landroid/view/View;

.field private mStoryLessons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;",
            ">;"
        }
    .end annotation
.end field

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 44
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 45
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 53
    sget-object v1, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    .line 54
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;-><init>()V

    .line 57
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;
    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090546

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 177
    return-void
.end method

.method private reportAmplitude()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->setOnGridClickListener(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->createPresenter()Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;
    .locals 0

    .prologue
    .line 186
    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->reportAmplitude()V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 75
    const v0, 0x7f0b00c2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mRootView:Landroid/view/View;

    .line 76
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->initView()V

    .line 77
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->setAdapter()V

    .line 78
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->setViewListener()V

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->onDestory()V

    .line 198
    return-void
.end method

.method public onGridItemClicked(Landroid/view/View;IJ)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "itemId"    # J

    .prologue
    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mStoryLessons:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;

    .line 258
    .local v1, "lesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->isUnPay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "KEY_SHOW_SUSPENSION_"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    const-string v2, "SHARE_TYPE"

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string v2, "SHARE_THUMB"

    const-string v3, "http://qiniu.jiliguala.com//wml/storylesson/icon/thumb.png"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v2, "key_url"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->burl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->startActivity(Landroid/content/Intent;)V

    .line 288
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    :cond_0
    :goto_0
    return-void

    .line 266
    .restart local v1    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    :cond_1
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "COURSE_ID"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v2, "title"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v2, "STORY_LESSON_URL"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->surl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v2, "STORY_LESSON_TARGET"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->tgt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 285
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 274
    .restart local v1    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    :cond_2
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "KEY_SHOW_SUSPENSION_"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    const-string v2, "SHARE_TYPE"

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v2, "SHARE_THUMB"

    const-string v3, "http://qiniu.jiliguala.com//wml/storylesson/icon/thumb.png"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "key_url"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->surl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onLoadMoreFailed()V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public onLoadMoreSuccess(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V
    .locals 2
    .param p1, "qualityStoryLessonTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->updateDataSet(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;Z)V

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->notifyDataSetChanged()V

    .line 228
    :cond_0
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 192
    return-void
.end method

.method public onRefreshNewFailed()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->showErrorView()V

    .line 220
    return-void
.end method

.method public onRefreshNewSuccess(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V
    .locals 2
    .param p1, "qualityStoryLessonTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->hasLessons()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b()V

    .line 212
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;->lessons:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mStoryLessons:Ljava/util/ArrayList;

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->updateDataSet(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;Z)V

    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->notifyDataSetChanged()V

    .line 211
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->showErrorView()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 96
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->autoRefresh()V

    .line 97
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public refreshTopBarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;

    .line 247
    .local v0, "qualityStoryLessonActivity":Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->refreshTopBarTitle(Ljava/lang/String;)V

    .line 250
    .end local v0    # "qualityStoryLessonActivity":Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;
    :cond_0
    return-void
.end method

.method protected setViewListener()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$3;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$4;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnEmptyViewClickListener(Lcom/jiliguala/niuwa/common/widget/customview/a;)V

    .line 171
    return-void
.end method
