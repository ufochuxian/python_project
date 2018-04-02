.class public Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;
.implements Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;
.implements Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;",
        ">;",
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mAges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/Age;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Ljava/lang/String;

.field mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

.field private mCourses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;",
            ">;"
        }
    .end annotation
.end field

.field private mDescTv:Landroid/widget/TextView;

.field private mInteractCourseAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;

.field private mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mNiceSpinner:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

.field private mRootView:Landroid/view/View;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private mTitleText:Landroid/widget/TextView;

.field private page:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 52
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 53
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->page:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mChannel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->page:I

    return v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mAges:Ljava/util/List;

    return-object v0
.end method

.method private addHeaderView()V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 113
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0082

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "header":Landroid/view/View;
    const v2, 0x7f090174

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mDescTv:Landroid/widget/TextView;

    .line 115
    const v2, 0x7f09017a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mNiceSpinner:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    .line 116
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 68
    sget-object v1, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    .line 69
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;-><init>()V

    .line 73
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;
    :cond_0
    return-object v0
.end method

.method private getSpinnerPos(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/Age;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "ages":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/Age;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 300
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/Age;

    .line 301
    .local v0, "age":Lcom/jiliguala/niuwa/logic/network/json/Age;
    iget-boolean v2, v0, Lcom/jiliguala/niuwa/logic/network/json/Age;->sel:Z

    if-eqz v2, :cond_0

    .line 305
    .end local v0    # "age":Lcom/jiliguala/niuwa/logic/network/json/Age;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 299
    .restart local v0    # "age":Lcom/jiliguala/niuwa/logic/network/json/Age;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "age":Lcom/jiliguala/niuwa/logic/network/json/Age;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getSpinnerStr(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/Age;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "ages":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/Age;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, "strs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/Age;

    .line 311
    .local v0, "age":Lcom/jiliguala/niuwa/logic/network/json/Age;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/Age;->ttl:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    .end local v0    # "age":Lcom/jiliguala/niuwa/logic/network/json/Age;
    :cond_0
    return-object v1
.end method

.method private goToCoursePeekerActivity(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 360
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mCourses:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;

    .line 361
    .local v1, "course":Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->_id:Ljava/lang/String;

    .line 362
    .local v3, "id":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "KEY_COURSE_ID"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 367
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleArguments()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 94
    const-string v1, "course_cat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    .line 96
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090546

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mTitleText:Landroid/widget/TextView;

    .line 235
    return-void
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->ttl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "Category"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->cat:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Category View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mInteractCourseAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;

    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mInteractCourseAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->setOnGridClickListener(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mInteractCourseAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    return-void
.end method

.method private setViewListener()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$2;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mNiceSpinner:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    new-instance v1, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$3;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setListener(Lcom/jiliguala/niuwa/common/widget/spinner/d;)V

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    new-instance v1, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$4;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 228
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mInteractCourseAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$1;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->createPresenter()Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;-><init>()V

    return-object v0
.end method

.method public getCourseCat()Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getUi()Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;
    .locals 0

    .prologue
    .line 244
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->handleArguments()V

    .line 80
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->reportAmplitude()V

    .line 81
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
    .line 103
    const v0, 0x7f0b00b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mRootView:Landroid/view/View;

    .line 104
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->initView()V

    .line 105
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->addHeaderView()V

    .line 106
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->setAdapter()V

    .line 107
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->setViewListener()V

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 255
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->onDestory()V

    .line 256
    return-void
.end method

.method public onGridItemClicked(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "itemId"    # J

    .prologue
    .line 353
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->goToCoursePeekerActivity(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public onLoadMoreFailed()V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public onLoadMoreSuccess(Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;)V
    .locals 3
    .param p1, "courseDetailTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;

    .prologue
    .line 326
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mCourses:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mInteractCourseAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;->courses:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->updateDataSet(Ljava/util/ArrayList;Z)V

    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mInteractCourseAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->notifyDataSetChanged()V

    .line 330
    iget v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->page:I

    .line 332
    :cond_0
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 2
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->refreshNew(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public onRefreshNewFailed()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->showErrorView()V

    .line 322
    return-void
.end method

.method public onRefreshNewSuccess(Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;)V
    .locals 6
    .param p1, "courseDetailTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;

    .prologue
    const/4 v5, 0x0

    .line 263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 269
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;

    iget-object v0, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;->cat:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;

    .line 271
    .local v0, "cat":Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;->ttl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;

    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;

    .line 274
    .local v1, "interactActivity":Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->RefreshTopBarTitle(Ljava/lang/String;)V

    .line 278
    .end local v1    # "interactActivity":Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;->desc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 279
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mDescTv:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_3
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->hasAgeData()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mNiceSpinner:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setVisibility(I)V

    .line 285
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;->cat:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;->age:Ljava/util/List;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mAges:Ljava/util/List;

    .line 286
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mNiceSpinner:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mAges:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getSpinnerStr(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mAges:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getSpinnerPos(Ljava/util/List;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Ljava/util/List;I)V

    .line 287
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mNiceSpinner:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mAges:Ljava/util/List;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mAges:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getSpinnerPos(Ljava/util/List;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/Age;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Age;->ttl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;->courses:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mCourses:Ljava/util/ArrayList;

    .line 292
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mInteractCourseAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mCourses:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->updateDataSet(Ljava/util/ArrayList;Z)V

    .line 293
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->mInteractCourseAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->notifyDataSetChanged()V

    .line 294
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->showErrorView()V

    .line 295
    iput v5, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->page:I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 134
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->autoRefresh()V

    .line 135
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
    .line 128
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 129
    return-void
.end method
