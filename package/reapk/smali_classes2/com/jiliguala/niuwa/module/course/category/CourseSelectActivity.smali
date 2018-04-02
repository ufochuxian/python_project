.class public Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/course/category/listener/OnCourseChannelClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;,
        Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;
    }
.end annotation


# static fields
.field public static final KEY_CATID:Ljava/lang/String; = "CATID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

.field private catAdapter:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;

.field private catId:Ljava/lang/String;

.field private catList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;",
            ">;"
        }
    .end annotation
.end field

.field private channelsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseChannel;",
            ">;"
        }
    .end annotation
.end field

.field private courseListView:Landroid/widget/ListView;

.field private curages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseAge;",
            ">;"
        }
    .end annotation
.end field

.field private currentChannelId:Ljava/lang/String;

.field private currentCourseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private descTv:Landroid/widget/TextView;

.field private firstVisible:I

.field fragment:Lcom/jiliguala/niuwa/common/a/g;

.field private isLoadingMore:Z

.field private isRefreshing:Z

.field private lastCatId:Ljava/lang/String;

.field private lastIv:Landroid/widget/ImageView;

.field private lastTv:Landroid/widget/TextView;

.field private mHCatlist:Landroid/support/v7/widget/RecyclerView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMask:Landroid/view/View;

.field private mNiceSpinner:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

.field private noMoreToLoad:Z

.field private page:I

.field private scrollstate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->channelsList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->currentCourseList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catList:Ljava/util/ArrayList;

    .line 53
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->currentChannelId:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catId:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->page:I

    .line 67
    iput v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->firstVisible:I

    .line 69
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->isLoadingMore:Z

    .line 70
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->isRefreshing:Z

    .line 77
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->noMoreToLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->isLoadingMore:Z

    return v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->noMoreToLoad:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->lastCatId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->lastCatId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->noMoreToLoad:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->descTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->curages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->curages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->mNiceSpinner:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->firstVisible:I

    return p1
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catAdapter:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->refreshNew(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->scrollstate:I

    return v0
.end method

.method static synthetic access$1802(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->scrollstate:I

    return p1
.end method

.method static synthetic access$1900(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->courseListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->currentCourseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->loadMoreData()V

    return-void
.end method

.method static synthetic access$2100(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->lastIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->lastIv:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->lastTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->lastTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->showLoadingProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->adapter:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->page:I

    return p1
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->hideLoadingProgress()V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->isRefreshing:Z

    return v0
.end method

.method static synthetic access$602(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->isRefreshing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->channelsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->currentChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->currentChannelId:Ljava/lang/String;

    return-object p1
.end method

.method private hideLoadingProgress()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->fragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->fragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->fragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 303
    :cond_0
    return-void
.end method

.method private initListView()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->courseListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;-><init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 365
    new-instance v0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->adapter:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    .line 366
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->adapter:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->setSubscriptionsRef(Lrx/i/b;)V

    .line 367
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->courseListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->adapter:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->courseListView:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 391
    return-void
.end method

.method private initUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    const v3, 0x7f0b0084

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->setContentView(I)V

    .line 231
    const v3, 0x7f09059a

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v3, 0x7f09016b

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->mHCatlist:Landroid/support/v7/widget/RecyclerView;

    .line 233
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 234
    .local v2, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 235
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->mHCatlist:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 236
    new-instance v3, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;-><init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catAdapter:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;

    .line 237
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->mHCatlist:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catAdapter:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 239
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 240
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0b0082

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "header":Landroid/view/View;
    const v3, 0x7f090174

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->descTv:Landroid/widget/TextView;

    .line 242
    const v3, 0x7f0902e1

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->courseListView:Landroid/widget/ListView;

    .line 243
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->courseListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 244
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->courseListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 246
    const v3, 0x7f09017a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->mNiceSpinner:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    .line 259
    const v3, 0x7f090316

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->mMask:Landroid/view/View;

    .line 260
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->mNiceSpinner:Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    new-instance v4, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$3;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$3;-><init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setListener(Lcom/jiliguala/niuwa/common/widget/spinner/d;)V

    .line 288
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->initListView()V

    .line 290
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->fragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 291
    return-void
.end method

.method private loadMoreData()V
    .locals 6

    .prologue
    .line 306
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "bid":Ljava/lang/String;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->isLoadingMore:Z

    .line 308
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->page:I

    if-nez v0, :cond_0

    .line 309
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->page:I

    .line 312
    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->currentChannelId:Ljava/lang/String;

    iget v4, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->page:I

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->requestCourseCat(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->showLoadingProgress()V

    .line 314
    return-void
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;-><init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V

    return-object v0
.end method

.method private refreshNew(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "cat"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 222
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "bid":Ljava/lang/String;
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->isRefreshing:Z

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 225
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->requestCourseCat(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    return-void
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;-><init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V

    return-object v0
.end method

.method private requestCourseCat(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "refresh"    # Z
    .param p2, "bid"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "cat"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v0

    .line 322
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lrx/e;

    move-result-object v0

    .line 323
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 324
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 325
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->refreshNewSub()Lrx/l;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 320
    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->loadMoreSub()Lrx/l;

    move-result-object v0

    goto :goto_1
.end method

.method private showLoadingProgress()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->fragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->fragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    if-lez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->d()V

    .line 442
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->finish()V

    .line 437
    const v0, 0x7f010013

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onChannelClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ttl"    # Ljava/lang/String;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->currentChannelId:Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->page:I

    .line 464
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 410
    :goto_0
    return-void

    .line 402
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->onBackPressed()V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x7f09059a
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CATID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catId:Ljava/lang/String;

    .line 200
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 203
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->initUI()V

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->currentChannelId:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->catId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->refreshNew(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 218
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->courseListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->firstVisible:I

    .line 219
    return-void
.end method

.method public switchContent(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v3, 0x7f010027

    .line 445
    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 447
    .local v0, "transaction":Landroid/support/v4/app/an;
    const v1, 0x7f010024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 448
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    const v1, 0x7f090158

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 450
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 451
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 454
    .end local v0    # "transaction":Landroid/support/v4/app/an;
    :cond_0
    return-void
.end method
