.class public Lcom/jiliguala/niuwa/module/write/WriteActivity;
.super Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;
.implements Lcom/jiliguala/niuwa/module/write/fragment/SkipCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/write/WriteActivity$a;
    }
.end annotation


# static fields
.field private static final MIN_HEAP_SIZE:I = 0x80

.field private static final MIN_LEFT_RAM:I = 0xc8

.field private static final MIN_RAM:I = 0x320

.field public static final TAG:Ljava/lang/String;

.field private static mWritingResult:Lcom/jiliguala/niuwa/logic/network/json/WriteResult;


# instance fields
.field private loadFinished:Z

.field private mActionBack:Landroid/widget/ImageView;

.field private mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mCourseId:Ljava/lang/String;

.field private mHandler:Lcom/jiliguala/niuwa/module/write/WriteActivity$a;

.field private mIsCourseFinished:Z

.field private mRid:Ljava/lang/String;

.field private mSkip:Landroid/widget/TextView;

.field private mSkipDialogFragment:Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

.field private mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

.field private mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

.field private mWriteUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/jiliguala/niuwa/module/write/WriteActivity$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity$a;-><init>(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mHandler:Lcom/jiliguala/niuwa/module/write/WriteActivity$a;

    .line 68
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->isDeviceSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSkipDialogFragment:Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/write/WriteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mWriteUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->startCourse()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->cancelSubCourse()V

    return-void
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/write/WriteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mIsCourseFinished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/WriteActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mHandler:Lcom/jiliguala/niuwa/module/write/WriteActivity$a;

    return-object v0
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 379
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method private doRequest()V
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mRid:Ljava/lang/String;

    .line 137
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->d(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 138
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 139
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 140
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;-><init>(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V

    .line 141
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 179
    return-void
.end method

.method private generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;)Lokhttp3/ab;
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "courseId"    # Ljava/lang/String;
    .param p3, "subTaskId"    # Ljava/lang/String;
    .param p5, "screenShot"    # Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;",
            ">;",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;",
            ")",
            "Lokhttp3/ab;"
        }
    .end annotation

    .prologue
    .line 385
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    .line 386
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 387
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 388
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 389
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    .line 390
    iput-object p5, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->screenshot:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;

    .line 392
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 395
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 184
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "rid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mRid:Ljava/lang/String;

    .line 185
    const-string v1, "COURSE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCourseId:Ljava/lang/String;

    .line 186
    const-string v1, "sub"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 187
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PARAM_COURSE_TICKET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    goto :goto_0
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mActionBack:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mActionBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f090505

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSkip:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f090408

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 132
    return-void
.end method

.method private isDeviceSupported()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 110
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->B()J

    move-result-wide v0

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->D()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->r()J

    move-result-wide v0

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    if-nez v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private reportExitAmplitude()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    if-nez v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private reportScreenShotsToServer()V
    .locals 7

    .prologue
    .line 302
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCourseId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mWritingResult:Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    sget-object v0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mWritingResult:Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/WriteResult;->screenshots:Ljava/util/ArrayList;

    .line 305
    .local v6, "screenshotList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;-><init>()V

    .line 306
    .local v5, "screenShot":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mRid:Ljava/lang/String;

    iput-object v0, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;->_id:Ljava/lang/String;

    .line 307
    iput-object v6, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;->url:Ljava/util/ArrayList;

    .line 309
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCourseId:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->reportSubCourseFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;)V

    goto :goto_0
.end method

.method private reportSubCourseFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "courseId"    # Ljava/lang/String;
    .param p3, "subTaskId"    # Ljava/lang/String;
    .param p5, "screenShot"    # Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;",
            ">;",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;",
            ")V"
        }
    .end annotation

    .prologue
    .line 324
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 326
    invoke-direct/range {p0 .. p5}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 327
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 328
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 329
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;

    invoke-direct {v2, p0, p3}, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;-><init>(Lcom/jiliguala/niuwa/module/write/WriteActivity;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 376
    return-void
.end method

.method private showExitCourseDialog()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    move-result-object v0

    .line 222
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->setCallback(Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;)V

    .line 223
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 225
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :cond_0
    return-void
.end method

.method private skipCourseDoReport()V
    .locals 6

    .prologue
    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCourseId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    new-instance v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;-><init>()V

    .line 315
    .local v5, "screenShot":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mRid:Ljava/lang/String;

    iput-object v0, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;->_id:Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;->url:Ljava/util/ArrayList;

    .line 318
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCourseId:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->reportSubCourseFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;)V

    goto :goto_0
.end method

.method private startCourse()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mWriteUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->loadUrl(Ljava/lang/String;)V

    .line 192
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public confirmExit()V
    .locals 0

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->sendCourseTaskExitReport()V

    .line 433
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->finish()V

    .line 434
    return-void
.end method

.method public dealWriteResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonResult"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    sput-object v0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mWritingResult:Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    .line 267
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->reportScreenShotsToServer()V

    .line 269
    :cond_0
    return-void
.end method

.method public doShare(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareJson"    # Ljava/lang/String;

    .prologue
    .line 261
    return-void
.end method

.method public doSkipCourse()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->skipCourseDoReport()V

    .line 444
    return-void
.end method

.method public goToLesson(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 299
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mIsCourseFinished:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->finish()V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->showExitCourseDialog()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 198
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->showExitCourseDialog()V

    goto :goto_0

    .line 201
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->doSkipCourse()V

    goto :goto_0

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090505 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->setUsingCrossWalk(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSkipDialogFragment:Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    .line 87
    const v1, 0x7f0b004d

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->setContentView(I)V

    .line 88
    const v1, 0x7f090630

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 90
    .local v0, "parent":Landroid/widget/FrameLayout;
    invoke-super {p0, v0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initWebView(Landroid/view/View;)V

    .line 91
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->initUI()V

    .line 93
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->handleIntent()V

    .line 97
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->doRequest()V

    .line 101
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 479
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onDestroy()V

    .line 480
    return-void
.end method

.method public onGameCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameID"    # Ljava/lang/String;

    .prologue
    .line 289
    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->loadFinished:Z

    .line 410
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 413
    :cond_0
    return-void
.end method

.method public onLoadStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->loadFinished:Z

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 404
    :cond_0
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 0
    .param p1, "progressInPercent"    # I

    .prologue
    .line 428
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 418
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public onSectionCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 284
    return-void
.end method

.method public proceedCourse()V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->startCourse()V

    .line 450
    return-void
.end method

.method public sendCourseTaskExitReport()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "Step"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "Time"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 245
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public showRightTopBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "show"    # Ljava/lang/String;

    .prologue
    .line 256
    return-void
.end method

.method public showRightTopBtn(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 251
    return-void
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 274
    return-void
.end method

.method public startRecordingPron(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 294
    return-void
.end method

.method public stopRecording()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method
