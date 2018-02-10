.class public Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public isLoadingMore:Z

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptions:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->isLoadingMore:Z

    .line 25
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->mSubscriptions:Lrx/i/b;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->mData:Ljava/util/ArrayList;

    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->mSubscriptions:Lrx/i/b;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->notifyRefreshFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;)V

    return-object v0
.end method

.method private notifyRefreshFailed()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;->onRefreshNewFailed()V

    .line 119
    :cond_0
    return-void
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$2;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;)V

    return-object v0
.end method


# virtual methods
.method public loadMore(ILjava/lang/String;)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "mChannel"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->isLoadingMore:Z

    .line 35
    invoke-virtual {p0, p1, v0, p2}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->requestInteractCourse(IZLjava/lang/String;)V

    .line 36
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 124
    return-void
.end method

.method public refreshNew(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0, v0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->requestInteractCourse(IZLjava/lang/String;)V

    .line 112
    return-void
.end method

.method public requestInteractCourse(IZLjava/lang/String;)V
    .locals 5
    .param p1, "page"    # I
    .param p2, "loadMore"    # Z
    .param p3, "channel"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "curBabyId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;->getCourseCat()Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    move-result-object v0

    .line 42
    .local v0, "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    if-eqz v0, :cond_0

    .line 43
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->cat:Ljava/lang/String;

    .line 45
    invoke-interface {v2, v1, p3, p1, v4}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lrx/e;

    move-result-object v2

    .line 49
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 50
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 51
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    if-eqz p2, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->loadMoreSub()Lrx/l;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 43
    invoke-virtual {v3, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 55
    .end local v0    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    :cond_0
    return-void

    .line 52
    .restart local v0    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->refreshNewSub()Lrx/l;

    move-result-object v2

    goto :goto_0
.end method
