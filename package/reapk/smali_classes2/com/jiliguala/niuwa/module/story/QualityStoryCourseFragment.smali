.class public Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;
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
        "Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;",
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

.field private mDescTv:Landroid/widget/TextView;

.field private mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

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
    .line 39
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 40
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 41
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method private addHeaderView()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 83
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0082

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "header":Landroid/view/View;
    const v2, 0x7f090174

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mDescTv:Landroid/widget/TextView;

    .line 85
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 50
    sget-object v1, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    .line 51
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;-><init>()V

    .line 55
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;
    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090546

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 139
    return-void
.end method

.method private reportAmplitude()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->setOnGridClickListener(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    return-void
.end method

.method private setViewListener()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    new-instance v1, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment$2;-><init>(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 133
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment$1;-><init>(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;
    .locals 0

    .prologue
    .line 148
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->reportAmplitude()V

    .line 62
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
    .line 73
    const v0, 0x7f0b00b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mRootView:Landroid/view/View;

    .line 74
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->initView()V

    .line 75
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->addHeaderView()V

    .line 76
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->setAdapter()V

    .line 77
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->setViewListener()V

    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 159
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->onDestory()V

    .line 160
    return-void
.end method

.method public onGridItemClicked(Landroid/view/View;IJ)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "itemId"    # J

    .prologue
    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mStoryLessons:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;

    .line 225
    .local v1, "lesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->isUnPay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "KEY_SHOW_SUSPENSION_"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    const-string v2, "SHARE_TYPE"

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v2, "SHARE_THUMB"

    const-string v3, "http://qiniu.jiliguala.com//wml/storylesson/icon/thumb.png"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v2, "key_url"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->burl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->startActivity(Landroid/content/Intent;)V

    .line 255
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    :cond_0
    :goto_0
    return-void

    .line 233
    .restart local v1    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    :cond_1
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "COURSE_ID"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v2, "title"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v2, "STORY_LESSON_URL"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->surl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v2, "STORY_LESSON_TARGET"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->tgt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 252
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 241
    .restart local v1    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    :cond_2
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "KEY_SHOW_SUSPENSION_"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    const-string v2, "SHARE_TYPE"

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v2, "SHARE_THUMB"

    const-string v3, "http://qiniu.jiliguala.com//wml/storylesson/icon/thumb.png"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v2, "key_url"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->surl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onLoadMoreFailed()V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onLoadMoreSuccess(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V
    .locals 0
    .param p1, "qualityStoryLessonTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    .prologue
    .line 195
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 154
    return-void
.end method

.method public onRefreshNewFailed()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->showErrorView()V

    .line 190
    return-void
.end method

.method public onRefreshNewSuccess(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V
    .locals 2
    .param p1, "qualityStoryLessonTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    .prologue
    .line 164
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;->lessons:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mStoryLessons:Ljava/util/ArrayList;

    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->hasLessons()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->hasCat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;->cat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->ttl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;->refreshTopBarTitle(Ljava/lang/String;)V

    .line 173
    :cond_2
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->hasCat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mDescTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;->cat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->updateDataSet(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;Z)V

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->mQualityStoryCourseAdapter:Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->notifyDataSetChanged()V

    .line 181
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->showErrorView()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->autoRefresh()V

    .line 99
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
    .line 103
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public refreshTopBarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;

    .line 214
    .local v0, "qualityStoryLessonActivity":Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->refreshTopBarTitle(Ljava/lang/String;)V

    .line 217
    .end local v0    # "qualityStoryLessonActivity":Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;
    :cond_0
    return-void
.end method
