.class public Lorg/xwalk/core/XWalkActivityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;
.implements Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkLib"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundDecorated:Z

.field private mCancelCommand:Ljava/lang/Runnable;

.field private mCompleteCommand:Ljava/lang/Runnable;

.field private mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

.field private mIsXWalkReady:Z

.field private mWillDecompress:Z

.field private mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cancelCommand"    # Ljava/lang/Runnable;
    .param p3, "completeCommand"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    .line 33
    iput-object p3, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCompleteCommand:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lorg/xwalk/core/XWalkDialogManager;

    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/xwalk/core/XWalkDialogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    .line 37
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->prepareToInit(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/XWalkActivityDelegate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkActivityDelegate;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getDialogManager()Lorg/xwalk/core/XWalkDialogManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    return-object v0
.end method

.method public isDownloadMode()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedMode()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isSharedLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isXWalkReady()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    return v0
.end method

.method public onActivateCompleted()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 164
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    if-eqz v0, :cond_1

    .line 165
    const-string v0, "XWalkLib"

    const-string v1, "Recover the background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    .line 170
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    .line 171
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->finishInit(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCompleteCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 173
    return-void
.end method

.method public onActivateFailed()V
    .locals 5

    .prologue
    .line 106
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    if-nez v1, :cond_0

    .line 107
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isDownloadMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    new-instance v1, Lorg/xwalk/core/XWalkUpdater;

    new-instance v2, Lorg/xwalk/core/XWalkActivityDelegate$2;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkActivityDelegate$2;-><init>(Lorg/xwalk/core/XWalkActivityDelegate;)V

    iget-object v3, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Lorg/xwalk/core/XWalkUpdater;-><init>(Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    .line 146
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkUpdater;->updateXWalkRuntime()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isDownloadMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 150
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 151
    const-string v1, "XWalkLib"

    const-string v2, "Set the background to screen_background_dark"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const v1, 0x1080098

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    .line 156
    .end local v0    # "window":Landroid/view/Window;
    :cond_1
    return-void

    .line 135
    :cond_2
    new-instance v1, Lorg/xwalk/core/XWalkUpdater;

    new-instance v2, Lorg/xwalk/core/XWalkActivityDelegate$3;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkActivityDelegate$3;-><init>(Lorg/xwalk/core/XWalkActivityDelegate;)V

    iget-object v3, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-direct {v1, v2, v3, v4}, Lorg/xwalk/core/XWalkUpdater;-><init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/content/Context;Lorg/xwalk/core/XWalkDialogManager;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    goto :goto_0
.end method

.method public onActivateStarted()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onDecompressCancelled()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 87
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    return-void
.end method

.method public onDecompressCompleted()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 97
    :cond_0
    invoke-static {p0}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;)V

    .line 98
    return-void
.end method

.method public onDecompressStarted()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    new-instance v1, Lorg/xwalk/core/XWalkActivityDelegate$1;

    invoke-direct {v1, p0}, Lorg/xwalk/core/XWalkActivityDelegate$1;-><init>(Lorg/xwalk/core/XWalkActivityDelegate;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkDialogManager;->showDecompressProgress(Ljava/lang/Runnable;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_1
    const-string v0, "XWalkLib"

    const-string v1, "Other initialization or download is proceeding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "XWalkLib"

    const-string v1, "Initialize by XWalkActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p0}, Lorg/xwalk/core/XWalkLibraryLoader;->startDecompress(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;)V

    goto :goto_0
.end method

.method public setXWalkApkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Lorg/xwalk/core/XWalkEnvironment;->setXWalkApkUrl(Ljava/lang/String;)V

    .line 54
    return-void
.end method
