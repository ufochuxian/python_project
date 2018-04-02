.class public Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;
.implements Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentUI;
.implements Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;",
        "Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentUI;",
        ">;",
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;",
        "Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentUI;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mCourses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mPurchasedGoodsAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;

.field private mRootView:Landroid/view/View;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private page:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 44
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 45
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->page:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->page:I

    return v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->goInteract()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 54
    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    .line 55
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;-><init>()V

    .line 59
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;
    :cond_0
    return-object v0
.end method

.method private goInteract()V
    .locals 5

    .prologue
    .line 177
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;-><init>()V

    .line 180
    .local v1, "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    const-string v3, "\u4e92\u52a8\u8bfe\u7a0b"

    iput-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->ttl:Ljava/lang/String;

    .line 181
    const-string v3, "7"

    iput-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->cat:Ljava/lang/String;

    .line 182
    const-string v3, "course_cat"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 183
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private goToCoursePeekerActivity(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 279
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mCourses:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;

    .line 280
    .local v1, "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->_id:Ljava/lang/String;

    .line 281
    .local v3, "id":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "KEY_COURSE_ID"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v5, "course"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 285
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 286
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f01001f

    const v7, 0x7f010014

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090546

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 194
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mPurchasedGoodsAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mPurchasedGoodsAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->setOnGridClickListener(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mPurchasedGoodsAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    return-void
.end method

.method private setViewListener()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$3;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$4;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnEmptyViewClickListener(Lcom/jiliguala/niuwa/common/widget/customview/a;)V

    .line 173
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mPurchasedGoodsAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 113
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->createPresenter()Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getUi()Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentUI;
    .locals 0

    .prologue
    .line 203
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->reportLessonPurchaseListView()V

    .line 66
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
    .line 80
    const v0, 0x7f0b00c2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mRootView:Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->initView()V

    .line 82
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->setAdapter()V

    .line 83
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->setViewListener()V

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 214
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->onDestory()V

    .line 215
    return-void
.end method

.method public onGridItemClicked(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "itemId"    # J

    .prologue
    .line 272
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->goToCoursePeekerActivity(I)V

    .line 275
    :cond_0
    return-void
.end method

.method public onLoadMoreFailed()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public onLoadMoreSuccess(Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;)V
    .locals 3
    .param p1, "recommendCourseTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mCourses:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mPurchasedGoodsAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;->data:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->updateDataSet(Ljava/util/ArrayList;Z)V

    .line 252
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mPurchasedGoodsAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->notifyDataSetChanged()V

    .line 253
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->page:I

    .line 255
    :cond_0
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 1
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->refreshNew()V

    .line 209
    return-void
.end method

.method public onRefreshNewFailed()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->showErrorView()V

    .line 245
    return-void
.end method

.method public onRefreshNewSuccess(Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;)V
    .locals 4
    .param p1, "recommendCourseTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 222
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;->hasData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b()V

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;->data:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mCourses:Ljava/util/ArrayList;

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mPurchasedGoodsAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mCourses:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->updateDataSet(Ljava/util/ArrayList;Z)V

    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->mPurchasedGoodsAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->notifyDataSetChanged()V

    .line 234
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->showErrorView()V

    .line 235
    iput v3, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->page:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 102
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->autoRefresh()V

    .line 103
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
    .line 96
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public reportLessonPurchaseListView()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Lesson Purchase List View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 71
    return-void
.end method
