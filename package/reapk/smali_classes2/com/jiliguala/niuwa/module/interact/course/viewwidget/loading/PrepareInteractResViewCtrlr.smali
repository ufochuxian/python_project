.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$UpdateUIHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_UNZIP_FILE_PROGRESS:I = 0x1000

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadResService:Landroid/content/Intent;

.field private mEnableDownloadRes:Z

.field private mHandler:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$UpdateUIHandler;

.field private mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

.field private mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

.field private mRecordPermissionChecker:Lcom/jiliguala/niuwa/common/util/v;

.field protected mSubscriptions:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preStepView"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mSubscriptions:Lrx/i/b;

    .line 34
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$UpdateUIHandler;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$UpdateUIHandler;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mHandler:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$UpdateUIHandler;

    .line 47
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    .line 49
    check-cast p2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .end local p2    # "preStepView":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .line 50
    new-instance v0, Lcom/jiliguala/niuwa/common/util/v;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/v;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mRecordPermissionChecker:Lcom/jiliguala/niuwa/common/util/v;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    return-object v0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    sget-object v2, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    const-string v2, "type"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public checkRecordPermission(Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    const-string v1, "\u68c0\u6d4b\u5f55\u97f3\u6743\u9650"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateNotifyText(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mRecordPermissionChecker:Lcom/jiliguala/niuwa/common/util/v;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/v;->a(Lcom/jiliguala/niuwa/common/util/v$a;)V

    .line 76
    return-void
.end method

.method public downloadInteractLessonResources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "saveFileName"    # Ljava/lang/String;
    .param p3, "saveFilePath"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "dstFile":Ljava/io/File;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 95
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateNotifyText(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 97
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    sget-object v3, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    const-string v3, "type"

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    const-string v3, "_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    const-string v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    const-string v3, "path"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    const-string v3, "interact_res_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    const-string v3, "download_type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mPrepareInteractResView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mDownloadResService:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getEnableDownloadRes()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mEnableDownloadRes:Z

    return v0
.end method

.method public setEnableDownloadRes(Z)V
    .locals 0
    .param p1, "enableDownloadRes"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mEnableDownloadRes:Z

    .line 130
    return-void
.end method

.method public unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "saveFileName"    # Ljava/lang/String;
    .param p3, "fullPath"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;->getSaveDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/jiliguala/niuwa/services/f;->a()Lcom/jiliguala/niuwa/services/f;

    move-result-object v0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;->getSrcFile()Ljava/io/File;

    move-result-object v5

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;->getDestFile()Ljava/io/File;

    move-result-object v6

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;->getPrefix()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/jiliguala/niuwa/services/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/services/f;->a()Lcom/jiliguala/niuwa/services/f;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;->getSaveDir()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;->getSrcFile()Ljava/io/File;

    move-result-object v5

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;->getDestFile()Ljava/io/File;

    move-result-object v6

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->mIPreStepView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;->getPrefix()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/jiliguala/niuwa/services/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method
