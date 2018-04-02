.class public Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;
.super Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;
.implements Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseView;
.implements Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment",
        "<",
        "Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseView;",
        ">;",
        "Lcom/jiliguala/niuwa/common/widget/customview/b;",
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseView;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
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

.field private mFooterLooperView:Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;

.field private mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

.field private mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mRecommendCategoryAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

.field private mRecommentCourseAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->TAG:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->exit()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->onLoginingSuccess()V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 201
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$3;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$4;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;)V

    .line 202
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 219
    return-void
.end method

.method private exit()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 114
    .local v2, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 115
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private goToCoursePeekerActivity(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    .line 317
    :try_start_0
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mCourses:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;

    .line 318
    .local v1, "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->_id:Ljava/lang/String;

    .line 319
    .local v5, "id":Ljava/lang/String;
    new-instance v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    invoke-direct {v6}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;-><init>()V

    .line 320
    .local v6, "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->relay:Z

    .line 321
    new-instance v7, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;-><init>()V

    iput-object v7, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    .line 322
    iget-object v7, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    iput-object v5, v7, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;->_id:Ljava/lang/String;

    .line 323
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 324
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "UNIT_OBJ"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 325
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 326
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v4

    .line 327
    .local v4, "ft":Landroid/support/v4/app/an;
    const v7, 0x7f01001f

    const v8, 0x7f010020

    const v9, 0x7f01001f

    const v10, 0x7f010020

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 331
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v7

    if-nez v7, :cond_0

    .line 332
    const v7, 0x7f090481

    sget-object v8, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v7, v3, v8}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 333
    sget-object v7, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 337
    :goto_0
    invoke-virtual {v4}, Landroid/support/v4/app/an;->i()I

    .line 341
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "ft":Landroid/support/v4/app/an;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :goto_1
    return-void

    .line 335
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    .restart local v3    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v4    # "ft":Landroid/support/v4/app/an;
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :cond_0
    invoke-virtual {v4, v3}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "ft":Landroid/support/v4/app/an;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private goToInteractActivity()V
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void
.end method

.method private onLoginingSuccess()V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->requestServer()V

    .line 226
    return-void
.end method

.method private reportCommendCourseAmplitude(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mCourses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;

    .line 298
    .local v0, "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    const-string v2, "ID"

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v2, "Category"

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->cat:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Lesson Click"

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private reportLessonListViewAmplitude()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Lesson List View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 376
    return-void
.end method


# virtual methods
.method public addFooterView(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "othersBeenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;>;"
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 269
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;-><init>(Landroid/content/Context;Landroid/support/v4/app/ag;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mFooterLooperView:Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;

    .line 270
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mFooterLooperView:Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addHeaderView(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "bannerBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;>;"
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 254
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 255
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->fillView(Ljava/util/List;)V

    .line 260
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->startLoop()V

    goto :goto_0
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->createPresenter()Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;-><init>()V

    return-object v0
.end method

.method public getSuperView()Lcom/jiliguala/niuwa/common/widget/customview/SuperView;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getUi()Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseView;
    .locals 0

    .prologue
    .line 73
    return-object p0
.end method

.method public onCourseItemClick(Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;)V
    .locals 10
    .param p1, "course"    # Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;

    .prologue
    .line 397
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->get_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 399
    const-string v6, "ID"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->get_id()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v6, "Category"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->getCat()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v6

    const-string v7, "Lesson Click"

    invoke-virtual {v6, v7, v4}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    :try_start_1
    new-instance v5, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;-><init>()V

    .line 410
    .local v5, "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->relay:Z

    .line 411
    new-instance v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    invoke-direct {v6}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;-><init>()V

    iput-object v6, v5, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    .line 412
    iget-object v6, v5, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->get_id()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;->_id:Ljava/lang/String;

    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "UNIT_OBJ"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 415
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 416
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 417
    .local v3, "ft":Landroid/support/v4/app/an;
    const v6, 0x7f01001f

    const v7, 0x7f010020

    const v8, 0x7f01001f

    const v9, 0x7f010020

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 418
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 419
    const v6, 0x7f090481

    sget-object v7, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v6, v2, v7}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 420
    sget-object v6, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 424
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 428
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "ft":Landroid/support/v4/app/an;
    .end local v5    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :goto_2
    return-void

    .line 422
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v3    # "ft":Landroid/support/v4/app/an;
    .restart local v5    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :cond_1
    invoke-virtual {v3, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 425
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "ft":Landroid/support/v4/app/an;
    .end local v5    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 404
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 140
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 150
    new-instance v1, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$2;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 169
    :cond_1
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    .line 87
    const v2, 0x7f0b00f5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$1;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v2, 0x7f09059f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    .local v0, "titleText":Landroid/widget/TextView;
    const-string v2, "\u7cbe\u54c1\u8bfe\u7a0b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v2, 0x7f0902e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 97
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 98
    const v2, 0x7f090546

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 99
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 100
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v2, p0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 106
    new-instance v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mRecommendCategoryAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    .line 107
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mRecommendCategoryAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    invoke-virtual {v2, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->setOnCatCourseItemListener(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;)V

    .line 108
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mRecommendCategoryAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->onDestroy()V

    .line 197
    :cond_0
    return-void
.end method

.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->stopLoop()V

    .line 189
    :cond_0
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 392
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->requestServer()V

    .line 382
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onResume()V

    .line 175
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mHeadView:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->startLoop()V

    .line 181
    :cond_0
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
    .line 126
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 127
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->addEventObserver()V

    .line 128
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->reportLessonListViewAmplitude()V

    .line 129
    return-void
.end method

.method public requestFailed()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->showErrorView()V

    .line 350
    return-void
.end method

.method public requestSuccess()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 363
    :cond_2
    return-void
.end method

.method public updateRecommendListData(Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;)V
    .locals 3
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;

    .prologue
    .line 276
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;->getData()Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mPullRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 280
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate;->getData()Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;

    move-result-object v0

    .line 281
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->getBanner()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->addHeaderView(Ljava/util/List;)V

    .line 282
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->getOthers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->addFooterView(Ljava/util/ArrayList;)V

    .line 283
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->mRecommendCategoryAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$DataBean;->getMiddle()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->updateData(Ljava/util/List;)V

    goto :goto_0
.end method
