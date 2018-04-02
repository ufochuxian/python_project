.class public Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;
.implements Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;
.implements Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;
.implements Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;
.implements Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;,
        Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;",
        "Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;",
        ">;",
        "Landroid/view/SurfaceHolder$Callback2;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;",
        "Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;",
        "Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;",
        "Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;",
        "Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;",
        "Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;",
        "Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;"
    }
.end annotation


# static fields
.field private static final ARG_FOLDER_NAME:Ljava/lang/String; = "folder_name"

.field private static final ARG_SUB_COURSE_ID:Ljava/lang/String; = "sub_course_id"

.field private static final MSG_ADD_MASK_VIEW:I = 0x1000

.field private static final MSG_EXIT_INTERACT_LESSON:I = 0x1005

.field private static final MSG_HIDE_ACTION_BACK_BTN:I = 0x1004

.field private static final MSG_REMOVE_MASK_VIEW:I = 0x1001

.field private static final MSG_SHOW_ACTION_BACK_BTN:I = 0x1003

.field private static final MSG_UPDATE_SCORE_PROGRESS:I = 0x1002

.field private static final PARAM_COURSE_ID:Ljava/lang/String; = "COURSE_ID"

.field private static final PARAM_CURRENT_WIDGET:Ljava/lang/String; = "CURRENT_WIDGET"

.field private static final PARAM_FOLDER_NAME:Ljava/lang/String; = "FOLDER_NAME"

.field private static final PARAM_REPORT_TEMPLATE:Ljava/lang/String; = "REPORT_TEMPLATE"

.field private static final PARAM_SCORE_NUM:Ljava/lang/String; = "SCORE_NUM"

.field private static final PARAM_SUB_COURSE_ID:Ljava/lang/String; = "SUB_COURSE_ID"

.field private static final TAG:Ljava/lang/String;

.field private static sVideoH:I

.field private static sVideoW:I


# instance fields
.field private clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field dialog:Lcom/jiliguala/niuwa/common/a/g;

.field private hasFocus:Z

.field private isScoreViewShowing:Z

.field private mActionBack:Landroid/widget/ImageView;

.field private mActionContainer:Landroid/widget/FrameLayout;

.field private mActionPlay:Landroid/widget/ImageView;

.field private mActionScriptId:Ljava/lang/String;

.field private mCourseId:Ljava/lang/String;

.field private mCurWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

.field private mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

.field private mFolderName:Ljava/lang/String;

.field private mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

.field private mHasShowSpeak:Z

.field private mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

.field mMaskContainer:Landroid/widget/FrameLayout;

.field mProgress:Landroid/view/View;

.field private mReporter:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

.field private mScoreNum:I

.field private mScoreView:Landroid/view/View;

.field private mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

.field private mSubCourseId:Ljava/lang/String;

.field mSurfaceView:Landroid/view/SurfaceView;

.field private mType:I

.field private mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

.field private progressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

.field private score:Landroid/widget/TextView;

.field private standardExitFragment:Lcom/jiliguala/niuwa/common/widget/d;

.field private topBox:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->isScoreViewShowing:Z

    .line 129
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionScriptId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->showDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->showMcPhReward(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->postAndBack()V

    return-void
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->updateTextAndUpdateProgress()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->score:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->progressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->startProgressAnim(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->showInteractReward(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->sendAndBack()V

    return-void
.end method

.method private addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "fl"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 486
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;

    invoke-direct {v1, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;-><init>(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 487
    .local v1, "obj":Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 488
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 489
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v0, v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 490
    return-void
.end method

.method private addScoreView(I)V
    .locals 8
    .param p1, "scoreNum"    # I

    .prologue
    const/4 v7, -0x2

    .line 794
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b00d7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreView:Landroid/view/View;

    .line 795
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreView:Landroid/view/View;

    const v4, 0x7f090086

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 796
    .local v1, "babyAvaIv":Lcom/makeramen/roundedimageview/RoundedImageView;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/makeramen/roundedimageview/RoundedImageView;->setVisibility(I)V

    .line 801
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreView:Landroid/view/View;

    const v4, 0x7f09048e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->score:Landroid/widget/TextView;

    .line 802
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreView:Landroid/view/View;

    const v4, 0x7f09048b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->topBox:Landroid/view/View;

    .line 803
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreView:Landroid/view/View;

    const v4, 0x7f09042d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->progressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    .line 805
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->progressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    sget-object v4, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->Invisible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    invoke-virtual {v3, v4}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setProgressTextVisibility(Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;)V

    .line 806
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "babyAva":Ljava/lang/String;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 809
    .local v2, "fl":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, -0x3f600000    # -5.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 810
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreView:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 812
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;

    invoke-direct {v4, p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 829
    return-void
.end method

.method private addScreenStateWatcher()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;)V

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->c()V

    .line 160
    return-void
.end method

.method private addTextScoreView()V
    .locals 4

    .prologue
    const/high16 v3, 0x43480000    # 200.0f

    .line 674
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 675
    .local v0, "imageView":Landroid/widget/ImageView;
    const v2, 0x7f0801e1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 676
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 677
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v2, 0x42960000    # 75.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 678
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->i()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 679
    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 680
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->dialog:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->dialog:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->dialog:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getVideoH()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->sVideoH:I

    return v0
.end method

.method public static getVideoW()I
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->sVideoW:I

    return v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const v4, 0x7f090548

    const v3, 0x7f090024

    const/16 v1, 0x8

    .line 322
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionContainer:Landroid/widget/FrameLayout;

    .line 323
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionBack:Landroid/widget/ImageView;

    .line 324
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionPlay:Landroid/widget/ImageView;

    .line 325
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 334
    const v0, 0x7f090409

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mProgress:Landroid/view/View;

    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    const v0, 0x7f090317

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mMaskContainer:Landroid/widget/FrameLayout;

    .line 341
    return-void

    :cond_0
    move v0, v1

    .line 328
    goto :goto_0
.end method

.method private isExitDialogShowing()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->standardExitFragment:Lcom/jiliguala/niuwa/common/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->standardExitFragment:Lcom/jiliguala/niuwa/common/widget/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/d;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->standardExitFragment:Lcom/jiliguala/niuwa/common/widget/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/d;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeIntentForWholeLesson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "courseId"    # Ljava/lang/String;
    .param p3, "subCourseId"    # Ljava/lang/String;
    .param p4, "actionScriptId"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "mcPcSubTaskTicket"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    const-string v1, "folder_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "COURSE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "ACTION_SCRIPT_ID"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "sub_course_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v1, "mc_pc_sub_task_ticket"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    return-object v0
.end method

.method private postAndBack()V
    .locals 4

    .prologue
    .line 1095
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/f;

    const/16 v2, 0x1023

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/f;-><init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 1096
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseResAndExit()V

    .line 1097
    return-void
.end method

.method private releaseSoundPlayerRes()V
    .locals 4

    .prologue
    .line 344
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    instance-of v3, v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    if-eqz v3, :cond_0

    .line 345
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .line 346
    .local v0, "interDragView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->releaseMediaPlay()V

    .line 349
    .end local v0    # "interDragView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    instance-of v3, v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    if-eqz v3, :cond_1

    .line 350
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    .line 351
    .local v2, "interTapView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->releaseSoundRes()V

    .line 354
    .end local v2    # "interTapView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    instance-of v3, v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    if-eqz v3, :cond_2

    .line 355
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    .line 356
    .local v1, "interSpeakView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->releaseSoundRes()V

    .line 358
    .end local v1    # "interSpeakView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;
    :cond_2
    return-void
.end method

.method private reportScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "widgetType"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "score"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mReporter:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    if-eqz v0, :cond_1

    .line 554
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const-string p4, "0"

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mReporter:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_1
    return-void
.end method

.method private requestSurfaceLayout(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 448
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->c(Landroid/app/Activity;)I

    move-result v4

    .line 449
    .local v4, "videoW":I
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->b(Landroid/app/Activity;)I

    move-result v3

    .line 451
    .local v3, "videoH":I
    int-to-float v5, p1

    int-to-float v6, p2

    div-float v1, v5, v6

    .line 452
    .local v1, "realRatio":F
    int-to-float v5, v4

    int-to-float v6, v3

    div-float v2, v5, v6

    .line 454
    .local v2, "surfaceRatio":F
    cmpl-float v5, v1, v2

    if-ltz v5, :cond_1

    .line 457
    int-to-float v5, v4

    div-float/2addr v5, v1

    float-to-int v3, v5

    .line 463
    :goto_0
    int-to-float v5, v3

    mul-float/2addr v5, v1

    float-to-int v4, v5

    .line 464
    sput v4, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->sVideoW:I

    .line 465
    sput v3, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->sVideoH:I

    .line 466
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 467
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 468
    .local v0, "llp":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 469
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 471
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->requestLayout()V

    .line 473
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mMaskContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mMaskContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 476
    .end local v0    # "llp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void

    .line 460
    :cond_1
    int-to-float v5, v3

    mul-float/2addr v5, v1

    float-to-int v4, v5

    goto :goto_0
.end method

.method private sendAndBack()V
    .locals 2

    .prologue
    .line 1000
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1002
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseResAndExit()V

    .line 1003
    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->dialog:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->dialog:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->dialog:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 241
    :cond_0
    return-void
.end method

.method private showInteractReward(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 3
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 984
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/Guavatar;

    if-eqz v1, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;

    move-result-object v0

    .line 986
    .local v0, "grd":Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/Guavatar;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSubCourseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->setGuavatar(Lcom/jiliguala/niuwa/logic/network/json/Guavatar;Ljava/lang/String;)V

    .line 987
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$11;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$11;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->setDismissListener(Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog$DismissListener;)V

    .line 993
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->show(Landroid/support/v4/app/ag;)V

    .line 997
    .end local v0    # "grd":Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;
    :goto_0
    return-void

    .line 995
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->sendAndBack()V

    goto :goto_0
.end method

.method private showMcPhReward(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 3
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 1075
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/Guavatar;

    if-eqz v2, :cond_1

    .line 1076
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;

    move-result-object v0

    .line 1077
    .local v0, "grd":Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;
    const-string v1, ""

    .line 1078
    .local v1, "subLessonId":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1079
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v2

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    .line 1081
    :cond_0
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/Guavatar;

    invoke-virtual {v0, v2, v1}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->setGuavatar(Lcom/jiliguala/niuwa/logic/network/json/Guavatar;Ljava/lang/String;)V

    .line 1082
    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$3;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->setDismissListener(Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog$DismissListener;)V

    .line 1088
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->show(Landroid/support/v4/app/ag;)V

    .line 1092
    .end local v0    # "grd":Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;
    .end local v1    # "subLessonId":Ljava/lang/String;
    :goto_0
    return-void

    .line 1090
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->postAndBack()V

    goto :goto_0
.end method

.method private startProgressAnim(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dstProgress"    # I

    .prologue
    .line 688
    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, p2

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v0

    .line 689
    .local v0, "animator":Lcom/nineoldandroids/a/l;
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 690
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 691
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$4;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;Landroid/view/View;Lcom/nineoldandroids/a/l;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 717
    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->a()V

    .line 718
    return-void
.end method

.method private stopScreenStateWatcher()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->d()V

    .line 166
    :cond_0
    return-void
.end method

.method private toggleOffFullScreen()V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 318
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->f(Landroid/app/Activity;)V

    .line 319
    return-void
.end method

.method private toggleOnFullScreen()V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 313
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 314
    return-void
.end method

.method private toggleRecord()V
    .locals 2

    .prologue
    .line 883
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    if-eqz v1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    .line 885
    .local v0, "interSpeakView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->toggleRecord()V

    .line 887
    .end local v0    # "interSpeakView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;
    :cond_0
    return-void
.end method

.method private updateTextAndUpdateProgress()V
    .locals 8

    .prologue
    .line 832
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->progressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v4}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getHeight()I

    move-result v3

    .line 834
    .local v3, "totalHeight":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->progressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v4}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 836
    .local v1, "result":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->score:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->topBox:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 838
    .local v2, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->progressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v4}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->progressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v5}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->progressBar:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;

    invoke-virtual {v5}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    .line 839
    .local v0, "bottom":I
    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    neg-int v5, v0

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 840
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->topBox:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->createPresenter()Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;-><init>()V

    return-object v0
.end method

.method public dismissLoadingProgress()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->dismissDialog()V

    .line 640
    return-void
.end method

.method public getCourseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCourseId:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreNum()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreNum:I

    return v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getUi()Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;
    .locals 0

    .prologue
    .line 175
    return-object p0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->hasFocus:Z

    return v0
.end method

.method public hasMaksView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 493
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mMaskContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mMaskContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 496
    :cond_0
    return v0
.end method

.method public hideTimeOutProgress()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->hideTimeOutProgress()V

    .line 946
    :cond_0
    return-void
.end method

.method public hideTransition()V
    .locals 4

    .prologue
    .line 873
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mProgress:Landroid/view/View;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 880
    return-void
.end method

.method public isActionContainterVisible()Z
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyInteractLayerTimeOut()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->onInteractTimeOut()V

    .line 635
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    .line 400
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->setCallBack(Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;)V

    .line 401
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 407
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->toggleRecord()V

    .line 1122
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x1003

    .line 1012
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1014
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->onBackPressed()V

    goto :goto_0

    .line 1017
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->debugJump()V

    goto :goto_0

    .line 1020
    :sswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->hasMaksView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->isActionContainterVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1022
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->removeMessages(I)V

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1033
    :sswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->hasMaksView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->actionStartOrPause()V

    goto :goto_0

    .line 1012
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090024 -> :sswitch_1
        0x7f090032 -> :sswitch_3
        0x7f090548 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 185
    const-string v1, "folder_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mFolderName:Ljava/lang/String;

    .line 186
    const-string v1, "COURSE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCourseId:Ljava/lang/String;

    .line 187
    const-string v1, "sub_course_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSubCourseId:Ljava/lang/String;

    .line 188
    const-string v1, "ACTION_SCRIPT_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionScriptId:Ljava/lang/String;

    .line 190
    const-string v1, "type"

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->NORMAL:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    iget v2, v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->code:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mType:I

    .line 192
    const-string v1, "mc_pc_sub_task_ticket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 195
    new-instance v2, Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCourseId:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSubCourseId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrx/i/b;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mReporter:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    .line 197
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mReporter:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/k$a;)V

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mFolderName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    const-string v1, "Empty folder. Fail to start."

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->finish()V

    .line 235
    :goto_0
    return-void

    .line 205
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->S_IS_SUB_COURSE_VISIBLE:Z

    .line 207
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    .line 209
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setFolderName(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setReplay(Z)V

    .line 212
    const v1, 0x7f0b002f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->setContentView(I)V

    .line 214
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->initView()V

    .line 216
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 233
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->toggleOnFullScreen()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 920
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onDestroy()V

    .line 921
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->toggleOnFullScreen()V

    .line 922
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->stopScreenStateWatcher()V

    .line 923
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseSoundPlayerRes()V

    .line 924
    return-void
.end method

.method public onEndOfLesson()V
    .locals 4

    .prologue
    .line 538
    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mType:I

    sget-object v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->NORMAL:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    iget v3, v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->code:I

    if-ne v2, v3, :cond_1

    .line 539
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mReporter:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mReporter:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->b()V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mType:I

    sget-object v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->MC_PHONICS:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    iget v3, v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->code:I

    if-ne v2, v3, :cond_0

    .line 543
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;-><init>()V

    .line 544
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->bid:Ljava/lang/String;

    .line 545
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCourseId:Ljava/lang/String;

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->lid:Ljava/lang/String;

    .line 546
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSubCourseId:Ljava/lang/String;

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->subtaskid:Ljava/lang/String;

    .line 547
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;-><init>()V

    .line 548
    .local v1, "sendLessonProgressManager":Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;
    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;)V

    .line 549
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->sendProgress(Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)V

    goto :goto_0
.end method

.method public onExitClick()V
    .locals 0

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->reportSubLessonExit()V

    .line 1108
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseResAndExit()V

    .line 1109
    return-void
.end method

.method public onExitInteractLesson(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 2
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    move-result-object v0

    .line 974
    .local v0, "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->show(Landroid/support/v4/app/ag;)V

    .line 975
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$10;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setIDismissListener(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)V

    .line 981
    return-void
.end method

.method public onGainResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "jumpId"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onGainResult(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onPause()V

    .line 275
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 276
    return-void
.end method

.method public onPrepareAdjustVideoSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->requestSurfaceLayout(II)V

    .line 445
    return-void
.end method

.method public onRequestIteractLessonScriptError()V
    .locals 0

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseResAndExit()V

    .line 685
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 297
    if-eqz p1, :cond_0

    .line 298
    const-string v0, "FOLDER_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mFolderName:Ljava/lang/String;

    .line 299
    const-string v0, "SCORE_NUM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreNum:I

    .line 300
    const-string v0, "CURRENT_WIDGET"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCurWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    .line 301
    const-string v0, "COURSE_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCourseId:Ljava/lang/String;

    .line 302
    const-string v0, "SUB_COURSE_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSubCourseId:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mReporter:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mReporter:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    const-string v0, "REPORT_TEMPLATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a(Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;)V

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 309
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onResume()V

    .line 269
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 270
    return-void
.end method

.method public onResumeClick()V
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->dismiss()V

    .line 1116
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->toggleRecord()V

    .line 1117
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    if-eqz p1, :cond_0

    .line 283
    const-string v0, "FOLDER_NAME"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "SCORE_NUM"

    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v0, "CURRENT_WIDGET"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCurWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 286
    const-string v0, "COURSE_ID"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCourseId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "SUB_COURSE_ID"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSubCourseId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "REPORT_TEMPLATE"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mReporter:Lcom/jiliguala/niuwa/common/util/xutils/util/k;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/k;->a()Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    return-void
.end method

.method public onScoreAnswer(ILjava/lang/String;)V
    .locals 1
    .param p1, "scoreNum"    # I
    .param p2, "nextId"    # Ljava/lang/String;

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->removeTransitionHideWatcher()V

    .line 724
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->hideTransition()V

    .line 726
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .end local p1    # "scoreNum":I
    :goto_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreNum:I

    .line 729
    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->onGainResult(Ljava/lang/String;)V

    .line 731
    return-void

    .line 726
    .restart local p1    # "scoreNum":I
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->saveStateWhileDestroy()V

    .line 899
    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 0

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->toggleRecord()V

    .line 892
    return-void
.end method

.method public onSendProgressFail()V
    .locals 4

    .prologue
    .line 1101
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/f;

    const/16 v2, 0x1025

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/f;-><init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 1102
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseResAndExit()V

    .line 1103
    return-void
.end method

.method public onSendProgressSuccess(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 4
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1072
    return-void
.end method

.method public onStartInteract()V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method public onStopInteract()V
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->showTransition()V

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->pausePlay()V

    .line 853
    return-void
.end method

.method public onTimeOut()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method public onUnZipFail()V
    .locals 0

    .prologue
    .line 915
    return-void
.end method

.method public onUnZipSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "md5name"    # Ljava/lang/String;

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startPlayOpening()V

    .line 910
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onWindowFocusChanged(Z)V

    .line 256
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->hasFocus:Z

    .line 257
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->hasFocus:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->isExitDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setAsForeGround()V

    .line 259
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->toggleOnFullScreen()V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setAsBackGround()V

    goto :goto_0
.end method

.method public refreshUnZipFileProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 904
    return-void
.end method

.method public releaseResAndExit()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->S_IS_SUB_COURSE_VISIBLE:Z

    .line 430
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 432
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->releaseMediaPlayer()V

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->finish()V

    .line 439
    return-void
.end method

.method public removeMaskAllView()V
    .locals 4

    .prologue
    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->isScoreViewShowing:Z

    .line 481
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    const/16 v1, 0x1001

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 482
    return-void
.end method

.method public removeTransition()V
    .locals 4

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getCurrentWidgetModel()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    .line 614
    .local v0, "widgetBase":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    if-eqz v0, :cond_1

    .line 615
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->widgetType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 628
    :goto_1
    :pswitch_0
    return-void

    .line 615
    :sswitch_0
    const-string v3, "drag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "tap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "speak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 621
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->removeTransitionHideWatcher()V

    .line 622
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->hideTransition()V

    goto :goto_1

    .line 626
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseResAndExit()V

    goto :goto_1

    .line 615
    nop

    :sswitch_data_0
    .sparse-switch
        0x1bfa3 -> :sswitch_1
        0x2f2d34 -> :sswitch_0
        0x688ffd2 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reportFail()V
    .locals 0

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseResAndExit()V

    .line 1008
    return-void
.end method

.method public reportInteractScoreToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetType"    # Ljava/lang/String;
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "totalScore"    # Ljava/lang/String;

    .prologue
    .line 857
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->reportScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public reportSubLessonExit()V
    .locals 4

    .prologue
    .line 410
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-nez v2, :cond_0

    .line 426
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getResId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v2, "Position"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v1

    .line 415
    .local v1, "sub":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    if-eqz v1, :cond_1

    .line 416
    const-string v2, "Type"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCurWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCurWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    const-string v2, "WidgetID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCurWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_2
    const-string v2, "Time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Sub Lesson Exit"

    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public reportSuccess(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    const/16 v2, 0x1005

    .line 963
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->removeMessages(I)V

    .line 966
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 967
    .local v0, "message":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 968
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 969
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 970
    return-void
.end method

.method public resetShowSpeakFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 862
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mHasShowSpeak:Z

    .line 863
    return-void
.end method

.method public resetTimeOutProgress()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->resetTimeOutProgress()V

    .line 939
    :cond_0
    return-void
.end method

.method public setBtnPlay(Z)V
    .locals 2
    .param p1, "isPaused"    # Z

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mActionPlay:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f08009b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1050
    return-void

    .line 1049
    :cond_0
    const v0, 0x7f080099

    goto :goto_0
.end method

.method public showInteractView(Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;)V
    .locals 5
    .param p1, "widget"    # Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 501
    if-nez p1, :cond_1

    .line 533
    .end local p1    # "widget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    :cond_0
    :goto_0
    return-void

    .line 505
    .restart local p1    # "widget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseSoundPlayerRes()V

    .line 506
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCurWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    .line 507
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->widgetType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 509
    :pswitch_0
    iput-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    .line 510
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    .line 511
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;

    check-cast p1, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    .end local p1    # "widget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;-><init>(Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;)V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->setFolderName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;

    move-result-object v2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getVideoW()I

    move-result v3

    invoke-static {}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getVideoH()I

    move-result v4

    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->renderData(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Landroid/content/Context;II)V

    .line 512
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->setInteractListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    move-result-object v0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->setFolderName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .line 513
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    .line 507
    .restart local p1    # "widget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    :sswitch_0
    const-string v3, "drag"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "tap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v3, "speak"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 516
    :pswitch_1
    iput-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    .line 517
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    .line 518
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->setInteractListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    move-result-object v0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->setFolderName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    .line 519
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    check-cast p1, Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;

    .end local p1    # "widget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->setData(Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;)V

    .line 520
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto/16 :goto_0

    .line 523
    .restart local p1    # "widget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    :pswitch_2
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mHasShowSpeak:Z

    if-nez v0, :cond_0

    .line 524
    iput-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    .line 525
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    .line 526
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    check-cast p1, Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    .end local p1    # "widget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->setData(Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;)V

    .line 527
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->setInteractListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    move-result-object v0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->setFolderName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    .line 528
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0, v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 529
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mHasShowSpeak:Z

    goto/16 :goto_0

    .line 507
    :sswitch_data_0
    .sparse-switch
        0x1bfa3 -> :sswitch_1
        0x2f2d34 -> :sswitch_0
        0x688ffd2 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showReplayDialog()V
    .locals 9

    .prologue
    const v8, 0x7f090156

    const v7, 0x7f0900fa

    const/4 v6, 0x0

    .line 744
    new-instance v0, Landroid/app/Dialog;

    const v4, 0x7f1000b4

    invoke-direct {v0, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 745
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 746
    const v4, 0x7f0b0132

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 748
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->i()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v3, v4, 0x5

    .line 749
    .local v3, "width":I
    const/4 v1, -0x2

    .line 750
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 751
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 752
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 753
    new-instance v4, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$5;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$5;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 759
    const v4, 0x7f090584

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u6b22\u8fce\u56de\u6765!"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    const v4, 0x7f09004c

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u7ee7\u7eed\u4e0a\u4e00\u6b21\u7684\u5b66\u4e60\u8fdb\u5ea6\u5417\uff1f"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const-string v5, "\u4ece\u5934\u5b66\u4e60"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 762
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const-string v5, "\u7ee7\u7eed\u5b66\u4e60"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 763
    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$6;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;Landroid/app/Dialog;)V

    .line 778
    .local v2, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 781
    return-void
.end method

.method public showScoreView()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCurWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCurWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->widgetType:Ljava/lang/String;

    const-string v1, "speak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->isScoreViewShowing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreNum:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    .line 665
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mScoreNum:I

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->addScoreView(I)V

    .line 669
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->isScoreViewShowing:Z

    .line 671
    :cond_0
    return-void

    .line 667
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->addTextScoreView()V

    goto :goto_0
.end method

.method public showTimeOutProgress()V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->showTimeOutProgress()V

    .line 953
    :cond_0
    return-void
.end method

.method public showTransition()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 868
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startTransitionHideWatcher()V

    .line 869
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 592
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 571
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 572
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 573
    :cond_0
    const-string v1, "[set visibility]...surface is inValid."

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 574
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid surface view."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 576
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 587
    :cond_1
    :goto_0
    return-void

    .line 582
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->addScreenStateWatcher()V

    .line 584
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setMediaPlayer(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 598
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    const-string v1, "[surfaceDestroyed]"

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->c(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->saveStateWhileDestroy()V

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->toggleOffFullScreen()V

    .line 607
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->stopScreenStateWatcher()V

    .line 608
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setAsBackGround()V

    .line 609
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->destoryMediaPlayer()V

    .line 610
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 566
    return-void
.end method

.method public toastReplay()V
    .locals 4

    .prologue
    .line 785
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$7;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 791
    return-void
.end method

.method public updateTimeOutProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 929
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->mInterBaseView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->updateTimeOutProgress(I)V

    .line 932
    :cond_0
    return-void
.end method
