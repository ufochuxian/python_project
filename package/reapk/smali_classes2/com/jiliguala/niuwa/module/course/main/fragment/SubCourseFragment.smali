.class public Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;


# static fields
.field public static final COURSE_ID:Ljava/lang/String; = "courseId"

.field public static final FIRST_PAGE:I = 0x0

.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final KEY_COURSE_OBJ:Ljava/lang/String; = "COURSE_OBJ"

.field private static final KEY_SUB_OBJ:Ljava/lang/String; = "SUB_OBJ"

.field public static final RID:Ljava/lang/String; = "rid"

.field public static final SUB:Ljava/lang/String; = "sub"

.field public static final SUB_RES_TYPE:Ljava/lang/String; = "sub_res_type"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private courseId:Ljava/lang/String;

.field private downloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

.field private dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

.field private innerContainer:Landroid/view/View;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field public mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

.field private mCurClickId:I

.field private mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

.field private mHasStop:Z

.field private mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

.field private mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

.field private networkDlg:Lcom/jiliguala/niuwa/common/a/a;

.field private outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

.field private position:I

.field private startTaskBtn:Landroid/widget/ImageView;

.field public sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

.field private taskThmb:Landroid/widget/ImageView;

.field private taskThmbMask:Landroid/widget/ImageView;

.field private thmbOuterContainer:Landroid/view/View;

.field private topMask:Lcom/makeramen/roundedimageview/RoundedImageView;

.field private updateDialog:Landroid/app/Dialog;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 93
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCurClickId:I

    .line 109
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;-><init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->downloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    .line 177
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->onMeasureAndLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->checkNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->doAppUpGrade(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    return-object v0
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 985
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;-><init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$9;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$9;-><init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V

    .line 986
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 984
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1016
    return-void
.end method

.method private checkNetwork(Ljava/lang/String;)V
    .locals 3
    .param p1, "downloadLink"    # Ljava/lang/String;

    .prologue
    .line 917
    sget-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->ApkResNoneWifiDownloadEnable:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v0

    .line 919
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/c;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    .line 921
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 922
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v2, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$7;-><init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 948
    .end local v0    # "type":I
    :goto_0
    return-void

    .line 943
    .restart local v0    # "type":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->doAppUpGrade(Ljava/lang/String;)V

    goto :goto_0

    .line 946
    .end local v0    # "type":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->doAppUpGrade(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doAppUpGrade(Ljava/lang/String;)V
    .locals 6
    .param p1, "upgradeUrl"    # Ljava/lang/String;

    .prologue
    .line 951
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/d/a;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 955
    .local v1, "dstFile":Ljava/io/File;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 958
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 959
    .local v0, "apkDownIntent":Landroid/content/Intent;
    sget-object v4, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    const-string v4, "_id"

    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string v4, "url"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    const-string v4, "download_type"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    const-string v4, "path"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v2

    .line 968
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;II)Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .prologue
    .line 181
    invoke-static {p1, p2}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .line 182
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;-><init>()V

    .line 185
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    :cond_0
    return-object v0
.end method

.method private goToWeiChatUnlockPage(ZZ)V
    .locals 2
    .param p1, "isClick"    # Z
    .param p2, "isInteract"    # Z

    .prologue
    .line 654
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->ac()Z

    move-result v0

    .line 655
    .local v0, "hasBindWeChat":Z
    if-nez v0, :cond_1

    .line 656
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;->showWetChatBindPop()V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    invoke-interface {v1, p1, p2}, Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;->showWetChatUnBindDescPop(ZZ)V

    goto :goto_0
.end method

.method private handleUnLoginAndNoBaby()V
    .locals 4

    .prologue
    const v2, 0x7f09016e

    .line 701
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 704
    iget v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCurClickId:I

    if-ne v1, v2, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    const v1, 0x7f0f0096

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 709
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 710
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startActivity(Landroid/content/Intent;)V

    .line 726
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v1

    if-nez v1, :cond_2

    .line 714
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 716
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startActivity(Landroid/content/Intent;)V

    .line 717
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 720
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCurClickId:I

    if-ne v1, v2, :cond_0

    .line 721
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 722
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->handleSubCourseStart(Landroid/app/Activity;)V

    .line 723
    const/4 v1, -0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCurClickId:I

    goto :goto_0
.end method

.method private initDownloadReceiver()V
    .locals 3

    .prologue
    .line 973
    new-instance v1, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->downloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    .line 974
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 975
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 976
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 977
    return-void
.end method

.method private isFromRoadMap()Z
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 740
    const/4 v0, 0x0

    .line 742
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    goto :goto_0
.end method

.method private isUnknownType(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;)Z
    .locals 3
    .param p1, "sub"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .prologue
    const/4 v0, 0x0

    .line 224
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v2, "listen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v2, "watch"

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v2, "exam"

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v2, "speak"

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v2, "card"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v2, "story"

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v2, "speakcard"

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v2, "write"

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v2, "interaction"

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .param p0, "viewId"    # I
    .param p1, "position"    # I

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onMeasureAndLayout()V
    .locals 13

    .prologue
    const v12, 0x3f666666    # 0.9f

    const v11, 0x3f19999a    # 0.6f

    const/4 v10, -0x1

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v8, 0x0

    .line 564
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->thmbOuterContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 565
    .local v5, "width":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->thmbOuterContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 568
    .local v1, "height":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmb:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 569
    .local v3, "rlThmbLp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 570
    .local v4, "rlThmbMaskLp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v7, "listen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 572
    int-to-float v6, v5

    mul-float/2addr v6, v11

    float-to-int v5, v6

    .line 573
    move v1, v5

    .line 574
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    .line 598
    .local v2, "margin":I
    :goto_0
    if-nez v3, :cond_0

    .line 599
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "rlThmbLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 601
    .restart local v3    # "rlThmbLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    .line 602
    .local v0, "delta":I
    mul-int/lit8 v6, v0, 0x2

    sub-int v6, v1, v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 603
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 604
    invoke-virtual {v3, v2, v2, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 605
    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 606
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmb:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmb:Landroid/widget/ImageView;

    invoke-virtual {v6, v8, v0, v8, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 609
    if-nez v4, :cond_1

    .line 610
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4    # "rlThmbMaskLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 612
    .restart local v4    # "rlThmbMaskLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    mul-int/lit8 v6, v0, 0x2

    sub-int v6, v1, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 613
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 614
    invoke-virtual {v4, v2, v2, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 615
    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 616
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmb:Landroid/widget/ImageView;

    invoke-virtual {v6, v8, v0, v8, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 618
    return-void

    .line 575
    .end local v0    # "delta":I
    .end local v2    # "margin":I
    :cond_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v7, "watch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v7, "speak"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v7, "interaction"

    .line 576
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 578
    :cond_3
    int-to-float v6, v5

    mul-float/2addr v6, v12

    float-to-int v5, v6

    .line 579
    int-to-float v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    float-to-int v1, v6

    .line 580
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    .restart local v2    # "margin":I
    goto :goto_0

    .line 581
    .end local v2    # "margin":I
    :cond_4
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v7, "exam"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v7, "card"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v7, "write"

    .line 582
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 584
    :cond_5
    int-to-float v6, v5

    mul-float/2addr v6, v11

    float-to-int v5, v6

    .line 585
    move v1, v5

    .line 586
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    .restart local v2    # "margin":I
    goto/16 :goto_0

    .line 587
    .end local v2    # "margin":I
    :cond_6
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v7, "story"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 589
    int-to-float v6, v5

    mul-float/2addr v6, v11

    float-to-int v5, v6

    .line 590
    move v1, v5

    .line 591
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    .restart local v2    # "margin":I
    goto/16 :goto_0

    .line 594
    .end local v2    # "margin":I
    :cond_7
    int-to-float v6, v5

    mul-float/2addr v6, v12

    float-to-int v5, v6

    .line 595
    move v1, v5

    .line 596
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    .restart local v2    # "margin":I
    goto/16 :goto_0
.end method

.method private reportSubLessonView()V
    .locals 3

    .prologue
    .line 729
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 730
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string v1, "Position"

    iget v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string v1, "Lesson Type"

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isFromRoadMap()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 736
    return-void
.end method

.method private setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 216
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->topMask:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageAlpha(I)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->topMask:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method private showUpdateDialog(Ljava/lang/String;)V
    .locals 11
    .param p1, "downloadLink"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f090156

    const v9, 0x7f0900fa

    const/4 v8, 0x1

    .line 878
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f1000b4

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    .line 879
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 880
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    const v6, 0x7f0b0192

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 882
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    const v6, 0x7f09004c

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 883
    .local v3, "tips":Landroid/widget/TextView;
    const-string v5, "Oops! \u9700\u8981\u5347\u7ea7App\u624d\u80fd\u4f7f\u7528\u6b64\u529f\u80fd"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 885
    .local v1, "confirm":Landroid/widget/Button;
    const-string v5, "\u7acb\u5373\u5347\u7ea7"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 887
    .local v0, "cancel":Landroid/widget/Button;
    const-string v5, "\u7b49\u7b49"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 888
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v5

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v4, v5, 0xa

    .line 889
    .local v4, "width":I
    const/4 v2, -0x2

    .line 890
    .local v2, "height":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/view/Window;->setLayout(II)V

    .line 891
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 892
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 894
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$5;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$5;-><init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$6;

    invoke-direct {v6, p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$6;-><init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    return-void

    .line 911
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 980
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 981
    return-void
.end method


# virtual methods
.method public enableInnerContainer()V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1065
    :cond_0
    return-void
.end method

.method public exitCurrentSubCourse()V
    .locals 3

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1053
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1054
    check-cast v1, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .line 1055
    .local v1, "unitFragment":Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->exitUnit()V

    .line 1058
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "unitFragment":Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
    :cond_0
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->position:I

    return v0
.end method

.method public getPrepareInteractResView()Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    return-object v0
.end method

.method public goToInteractCourseActivity()V
    .locals 3

    .prologue
    .line 487
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-nez v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->needInteractCoursePay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a()Lcom/jiliguala/niuwa/common/util/xutils/util/l;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$3;-><init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getPrepareInteractResView()Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 505
    const-string v1, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 506
    .local v0, "hasOpenPermission":Z
    if-eqz v0, :cond_3

    .line 507
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getPrepareInteractResView()Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->startDownload()V

    goto :goto_0

    .line 510
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getPrepareInteractResView()Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$4;-><init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->checkPermisson(Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;)V

    goto :goto_0
.end method

.method public handleSubCourseStart(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f01001d

    const v6, 0x7f010013

    .line 800
    if-nez p1, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->reportSubLessonView()V

    .line 804
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 805
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;-><init>()V

    .line 806
    .local v2, "ticket":Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->resource:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->resource:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->_id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 807
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->resource:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->_id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setResourceId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 809
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->courseId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setCourseId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setTaskId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    move-result-object v4

    iget v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->position:I

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setTaskPostion(I)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setTaskType(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 810
    const-string v4, "PARAM_COURSE_TICKET"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 813
    const-string v4, "from_practise"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v5, "listen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 817
    const-class v4, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 818
    const-string v4, "extra"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 820
    invoke-virtual {p1, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 821
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v5, "watch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 824
    const-class v4, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 825
    const-string v4, "extra"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 826
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 827
    invoke-virtual {p1, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 828
    :cond_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v5, "exam"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 830
    const-class v4, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 831
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 832
    invoke-virtual {p1, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 833
    :cond_5
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v5, "speak"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v5, "speakcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 835
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 836
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v4, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 837
    const-string v4, "courseId"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v4, "rid"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->resource:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v4, "sub_res_type"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->resource:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->typ:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v4, "sub"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 841
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 842
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 843
    invoke-virtual {p1, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 845
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_7
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v5, "card"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 847
    const-class v4, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 848
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 849
    invoke-virtual {p1, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 850
    :cond_8
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v5, "story"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 852
    const-class v4, Lcom/jiliguala/niuwa/module/story/StoryActivity;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 853
    const-string v4, "PARAM_STORY_FROM_COURSE"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 854
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 855
    invoke-virtual {p1, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 856
    :cond_9
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v5, "write"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 857
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 858
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v4, "rid"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->resource:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v4, "COURSE_ID"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v4, "sub"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 861
    const-class v4, Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 862
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 863
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 864
    invoke-virtual {p1, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 865
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_a
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v5, "interaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 866
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->goToInteractCourseActivity()V

    goto/16 :goto_0

    .line 869
    :cond_b
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setClickable(Z)V

    .line 870
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 871
    invoke-static {}, Lcom/jiliguala/niuwa/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 872
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->showUpdateDialog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public hasCoursePay()Z
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-nez v0, :cond_0

    .line 1070
    const/4 v0, 0x0

    .line 1072
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->hasInteractCoursePay()Z

    move-result v0

    goto :goto_0
.end method

.method public hasStop()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mHasStop:Z

    return v0
.end method

.method public isInteractCourseFragmentVisible()Z
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onChildGained()V
    .locals 2

    .prologue
    .line 1026
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCurClickId:I

    const v1, 0x7f09051c

    if-ne v0, v1, :cond_0

    .line 1027
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->handleUnLoginAndNoBaby()V

    .line 1029
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 752
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCurClickId:I

    .line 755
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCurClickId:I

    packed-switch v0, :pswitch_data_0

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 757
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isShareable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;->showUnitShareDialog()V

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->isUnAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;->showCourseShareDialog()V

    goto :goto_0

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isWeiChatUnlockCourse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->goToWeiChatUnlockPage(ZZ)V

    goto :goto_0

    .line 770
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->hasInteractCoursePay()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->wechatget:Z

    if-eqz v0, :cond_4

    .line 771
    invoke-direct {p0, v1, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->goToWeiChatUnlockPage(ZZ)V

    goto :goto_0

    .line 774
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->handleUnLoginAndNoBaby()V

    goto :goto_0

    .line 755
    :pswitch_data_0
    .packed-switch 0x7f09016e
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 682
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 683
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->addEventObserver()V

    .line 684
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->initDownloadReceiver()V

    .line 685
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 346
    if-eqz p3, :cond_0

    .line 347
    const-string v10, "SUB_OBJ"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 348
    const-string v10, "COURSE_OBJ"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 351
    :cond_0
    const v10, 0x7f0b018a

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    .line 352
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    const v11, 0x7f09016e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    .line 353
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v10

    invoke-static {v10}, Lcom/jiliguala/niuwa/common/a/d;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v10

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    .line 355
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    if-eqz v10, :cond_3

    .line 356
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    const v11, 0x7f090556

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 357
    .local v5, "thmb":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    const v11, 0x7f090285

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->thmbOuterContainer:Landroid/view/View;

    .line 358
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    const v11, 0x7f0903b0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 359
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    const v11, 0x7f09059b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->topMask:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 360
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->topMask:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x106000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    const v11, 0x7f090556

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmb:Landroid/widget/ImageView;

    .line 362
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    const v11, 0x7f090557

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    .line 365
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v8, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->pic:Ljava/lang/String;

    .line 366
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 367
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v9, v8

    .line 368
    .local v9, "urlToLoad":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v10

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jiliguala/niuwa/logic/e/a;->y()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v11

    invoke-virtual {v10, v9, v5, v11}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 369
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 372
    .end local v9    # "urlToLoad":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    const v11, 0x7f09051c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    .line 373
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    const v11, 0x7f0905be

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 376
    .local v6, "typeDescTv":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v11, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$2;

    invoke-direct {v11, p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$2;-><init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 391
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v11, "listen"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 393
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v11, 0x7f0800cb

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 394
    const v10, 0x7f0f024d

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 395
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0600ad

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    const v11, 0x7f080132

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    .end local v5    # "thmb":Landroid/widget/ImageView;
    .end local v6    # "typeDescTv":Landroid/widget/TextView;
    .end local v8    # "url":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    return-object v10

    .line 367
    .restart local v5    # "thmb":Landroid/widget/ImageView;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?imageMogr2/thumbnail/640x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 397
    .restart local v6    # "typeDescTv":Landroid/widget/TextView;
    :cond_5
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v11, "watch"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 399
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v11, 0x7f0800d0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 400
    const v10, 0x7f0f0251

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 401
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0600fa

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    const v11, 0x7f080136

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 404
    :cond_6
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v11, "exam"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 406
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v11, 0x7f0800c8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    const v10, 0x7f0f024a

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 408
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060084

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    const v11, 0x7f080130

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 411
    :cond_7
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v11, "speak"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 413
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v11, 0x7f0800ce

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    const v10, 0x7f0f024f

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 415
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0600e7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    const v11, 0x7f080134

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 418
    :cond_8
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v11, "card"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v11, "speakcard"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 420
    :cond_9
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v11, 0x7f0800c9

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    const v10, 0x7f0f024b

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 422
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060086

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    const v11, 0x7f080130

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 425
    :cond_a
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v11, "story"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 427
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v11, 0x7f0800cd

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 428
    const v10, 0x7f0f024e

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 429
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0600d9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    const v11, 0x7f080133

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 431
    :cond_b
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v11, "write"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 432
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v11, 0x7f0800d1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    const v10, 0x7f0f0252

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 434
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v12

    .line 435
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0600ff

    .line 436
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 434
    invoke-virtual {v10, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    const v11, 0x7f080130

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 438
    :cond_c
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v11, "interaction"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 439
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v11, 0x7f0800ca

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    const v10, 0x7f0f024c

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 441
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    new-instance v10, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .line 444
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    sget-object v11, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->NORMAL:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    iget v11, v11, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->code:I

    invoke-virtual {v10, v11}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->setType(I)V

    .line 445
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v10, :cond_d

    .line 446
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->needInteractCoursePay()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 447
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateUIToUnPayView()V

    .line 452
    :goto_2
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->hasSub()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 453
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 454
    .local v4, "sub":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v11, v11, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 455
    .local v7, "uniqueName":Ljava/lang/String;
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v11, v11, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    iget-object v12, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v7}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->resource:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    .line 457
    .local v3, "resource":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;
    if-eqz v3, :cond_d

    iget-object v10, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->_id:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 458
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v11, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->_id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->setActionScriptId(Ljava/lang/String;)V

    .line 462
    .end local v3    # "resource":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;
    .end local v4    # "sub":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    .end local v7    # "uniqueName":Ljava/lang/String;
    :cond_d
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->packages:Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 463
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v11, v11, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v11, v11, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->packages:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->setData(Ljava/util/ArrayList;)V

    .line 465
    :cond_e
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v10, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->setCallBack(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;)V

    .line 466
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 467
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    const/4 v11, -0x1

    invoke-virtual {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 468
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    const v11, 0x7f090106

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 469
    .local v1, "cardBottomContainer":Landroid/widget/RelativeLayout;
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v1, v10, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0600a0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    const v11, 0x7f080131

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 449
    .end local v1    # "cardBottomContainer":Landroid/widget/RelativeLayout;
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_f
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateUIToPaySuccessUI()V

    goto/16 :goto_2

    .line 474
    :cond_10
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v11, 0x7f0800cf

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    const v10, 0x7f0f0250

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 476
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->outerBackGround:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0600f6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->taskThmbMask:Landroid/widget/ImageView;

    const v11, 0x7f080135

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 693
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 694
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->unregisterReceiver()V

    .line 695
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->unRegisterReceiver()V

    .line 698
    :cond_0
    return-void
.end method

.method public onLoginSucceed()V
    .locals 2

    .prologue
    .line 1019
    iget v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCurClickId:I

    const v1, 0x7f09051c

    if-ne v0, v1, :cond_0

    .line 1020
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->handleUnLoginAndNoBaby()V

    .line 1022
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 783
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onPause()V

    .line 785
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mHasStop:Z

    .line 322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 325
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    if-eqz p1, :cond_0

    .line 313
    const-string v0, "SUB_OBJ"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 314
    const-string v0, "COURSE_OBJ"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 789
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onStop()V

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mHasStop:Z

    .line 792
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 631
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 633
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->onMeasureAndLayout()V

    .line 635
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDone(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;)V

    .line 638
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v1, "interaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->needInteractCoursePay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->wechatget:Z

    if-eqz v0, :cond_2

    .line 641
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->goToWeiChatUnlockPage(ZZ)V

    .line 648
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isWeiChatUnlockCourse()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->position:I

    if-nez v0, :cond_1

    .line 649
    invoke-direct {p0, v2, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->goToWeiChatUnlockPage(ZZ)V

    .line 651
    :cond_1
    return-void

    .line 643
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->goToInteractCourseActivity()V

    goto :goto_0
.end method

.method public setCourseData(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V
    .locals 0
    .param p1, "courseData"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 1037
    return-void
.end method

.method public setIconBySubStatus(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;)V
    .locals 2
    .param p1, "sub"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .prologue
    .line 531
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v1, "listen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 560
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v1, "watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v1, "exam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 542
    :cond_2
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v1, "speak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 546
    :cond_3
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v1, "card"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v1, "speakcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 550
    :cond_5
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v1, "story"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 552
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 553
    :cond_6
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    const-string v1, "write"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 555
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 558
    :cond_7
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->position:I

    .line 198
    return-void
.end method

.method public setShareDialogListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    .line 1033
    return-void
.end method

.method public setSub(Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V
    .locals 1
    .param p1, "courseId"    # Ljava/lang/String;
    .param p2, "sub"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    .param p3, "courseData"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->courseId:Ljava/lang/String;

    .line 202
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 203
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->sub:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->updateDone(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;)V

    .line 207
    :cond_0
    return-void
.end method

.method public updateDone(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;)V
    .locals 4
    .param p1, "sub"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 243
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->status:Ljava/lang/String;

    const-string v1, "locked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->isUnAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isUnknownType(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 246
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isInteractCourse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 252
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isWeiChatUnlockCourse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 258
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isShareable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 264
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :cond_3
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->setAlpha(I)V

    .line 271
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    :cond_4
    :goto_0
    return-void

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 274
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->innerContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->setAlpha(I)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->setIconBySubStatus(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;)V

    .line 286
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->status:Ljava/lang/String;

    const-string v1, "completed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->startTaskBtn:Landroid/widget/ImageView;

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateUIAndDataSourceOnReceivedPayResult()V
    .locals 2

    .prologue
    .line 1076
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->setAlpha(I)V

    .line 1077
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    const-string v1, "interactionavailable"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->status:Ljava/lang/String;

    .line 1080
    :cond_0
    return-void
.end method
