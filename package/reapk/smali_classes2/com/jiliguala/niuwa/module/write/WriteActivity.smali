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
    .line 55
    const-class v0, Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;-><init>()V

    .line 65
    new-instance v0, Lcom/jiliguala/niuwa/module/write/WriteActivity$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity$a;-><init>(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mHandler:Lcom/jiliguala/niuwa/module/write/WriteActivity$a;

    .line 69
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->isDeviceSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSkipDialogFragment:Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/write/WriteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mWriteUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->startCourse()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->cancelSubCourse()V

    return-void
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/write/WriteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mIsCourseFinished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/WriteActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mHandler:Lcom/jiliguala/niuwa/module/write/WriteActivity$a;

    return-object v0
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 375
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method private doRequest()V
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mRid:Ljava/lang/String;

    .line 138
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->d(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 139
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 140
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 141
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity$1;-><init>(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V

    .line 142
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 180
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
    .line 381
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    .line 382
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 383
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 384
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 385
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    .line 386
    iput-object p5, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->screenshot:Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;

    .line 388
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 391
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "rid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mRid:Ljava/lang/String;

    .line 186
    const-string v1, "COURSE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCourseId:Ljava/lang/String;

    .line 187
    const-string v1, "sub"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 188
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
    .line 126
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mActionBack:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mActionBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f0904fb

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSkip:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f090401

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 133
    return-void
.end method

.method private isDeviceSupported()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 111
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

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    if-nez v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private reportExitAmplitude()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    if-nez v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private reportScreenShotsToServer()V
    .locals 7

    .prologue
    .line 298
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

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    sget-object v0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mWritingResult:Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/WriteResult;->screenshots:Ljava/util/ArrayList;

    .line 301
    .local v6, "screenshotList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;-><init>()V

    .line 302
    .local v5, "screenShot":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mRid:Ljava/lang/String;

    iput-object v0, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;->_id:Ljava/lang/String;

    .line 303
    iput-object v6, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;->url:Ljava/util/ArrayList;

    .line 305
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
    .line 320
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 322
    invoke-direct/range {p0 .. p5}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 323
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 324
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 325
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;

    invoke-direct {v2, p0, p3}, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;-><init>(Lcom/jiliguala/niuwa/module/write/WriteActivity;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 372
    return-void
.end method

.method private showExitCourseDialog()V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    move-result-object v0

    .line 223
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->setCallback(Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;)V

    .line 224
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 226
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :cond_0
    return-void
.end method

.method private skipCourseDoReport()V
    .locals 6

    .prologue
    .line 309
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

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    new-instance v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;-><init>()V

    .line 311
    .local v5, "screenShot":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mRid:Ljava/lang/String;

    iput-object v0, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;->_id:Ljava/lang/String;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v5, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;->url:Ljava/util/ArrayList;

    .line 314
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
    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mWriteUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->loadUrl(Ljava/lang/String;)V

    .line 193
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public confirmExit()V
    .locals 0

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->sendCourseTaskExitReport()V

    .line 424
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->finish()V

    .line 425
    return-void
.end method

.method public dealWriteResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonResult"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    sput-object v0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mWritingResult:Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    .line 268
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->reportScreenShotsToServer()V

    .line 270
    :cond_0
    return-void
.end method

.method public doShare(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareJson"    # Ljava/lang/String;

    .prologue
    .line 262
    return-void
.end method

.method public doSkipCourse()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->skipCourseDoReport()V

    .line 435
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mIsCourseFinished:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->finish()V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->showExitCourseDialog()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 199
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->showExitCourseDialog()V

    goto :goto_0

    .line 202
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->doSkipCourse()V

    goto :goto_0

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f0904fb -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->setUsingCrossWalk(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mSkipDialogFragment:Lcom/jiliguala/niuwa/module/write/fragment/SkipDialogFragment;

    .line 88
    const v1, 0x7f0b004d

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->setContentView(I)V

    .line 89
    const v1, 0x7f090626

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 91
    .local v0, "parent":Landroid/widget/FrameLayout;
    invoke-super {p0, v0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initWebView(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->initUI()V

    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->handleIntent()V

    .line 98
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->doRequest()V

    .line 102
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 470
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onDestroy()V

    .line 471
    return-void
.end method

.method public onGameCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameID"    # Ljava/lang/String;

    .prologue
    .line 290
    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->loadFinished:Z

    .line 406
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public onLoadStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->loadFinished:Z

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mCenterProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 400
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 414
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public onSectionCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 285
    return-void
.end method

.method public proceedCourse()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->startCourse()V

    .line 441
    return-void
.end method

.method public sendCourseTaskExitReport()V
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v1, :cond_0

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "Position"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskPostion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "Step"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "Time"

    const-string v2, "Null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 246
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public showRightTopBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "show"    # Ljava/lang/String;

    .prologue
    .line 257
    return-void
.end method

.method public showRightTopBtn(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 252
    return-void
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 275
    return-void
.end method

.method public startRecordingPron(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 295
    return-void
.end method

.method public stopRecording()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method