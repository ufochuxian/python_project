.class public interface abstract Lcom/jiliguala/niuwa/module/video/presenter/VideoView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/search/SearchView;


# virtual methods
.method public abstract dismissLoadingView()V
.end method

.method public abstract doShareAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getContext()Landroid/app/Activity;
.end method

.method public abstract getCourseIds()[Ljava/lang/String;
.end method

.method public abstract getSubscriptions()Lrx/i/b;
.end method

.method public abstract getThisFragmentManager()Landroid/support/v4/app/ag;
.end method

.method public abstract gotoChannelSelect()V
.end method

.method public abstract hideLoadingProgress()V
.end method

.method public abstract isFromPratise()Z
.end method

.method public abstract isNotLesson()Z
.end method

.method public abstract onAlreadySwitchToFirst()V
.end method

.method public abstract onClickFavThisVideo()V
.end method

.method public abstract onClickUnFavThisVideo(Ljava/lang/String;)V
.end method

.method public abstract onNetworkUnavailable()V
.end method

.method public abstract onPlayComplete()Z
.end method

.method public abstract onPlayError()Z
.end method

.method public abstract onPlayPause()V
.end method

.method public abstract onPlayPauseOnUi()V
.end method

.method public abstract onPlayPrepared(J)V
.end method

.method public abstract onPlayResume()V
.end method

.method public abstract onPlayResumeOnUi()V
.end method

.method public abstract onPrepareAdjustVideoSize(II)V
.end method

.method public abstract onProgressUpdate(II)V
.end method

.method public abstract onRenderPlayConntected()V
.end method

.method public abstract onRenderPlayDisConntected()V
.end method

.method public abstract onRenderPlaySeek()V
.end method

.method public abstract onRenderPlayStart()V
.end method

.method public abstract onRenderPlayStop()V
.end method

.method public abstract onSearchAction()V
.end method

.method public abstract onSendProgressFail()V
.end method

.method public abstract onSendProgressSuccess(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
.end method

.method public abstract onShowVideoLimitDialog()V
.end method

.method public abstract onStartTimer()V
.end method

.method public abstract onStopTimer()V
.end method

.method public abstract onSubCourseReportFailed()V
.end method

.method public abstract onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
.end method

.method public abstract onUpdateRenderIcon(ZZ)V
.end method

.method public abstract pausePlayOnChannelShow()V
.end method

.method public abstract setControllerEnable(Z)V
.end method

.method public abstract show3GNetStateDialog()V
.end method

.method public abstract showAddBabyPage()V
.end method

.method public abstract showErrorAlertDialog()V
.end method

.method public abstract showLoadingProgress()V
.end method

.method public abstract showLoadingView()V
.end method

.method public abstract showLoginPage()V
.end method

.method public abstract showPop(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V
.end method

.method public abstract showRenderChooser()V
.end method

.method public abstract showSingleLoopDialog()V
.end method

.method public abstract showSurfaceCover(Z)V
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method

.method public abstract updateArtist(Ljava/lang/String;)V
.end method

.method public abstract updateChannelName(Ljava/lang/String;)V
.end method

.method public abstract updateFavIcon(Z)V
.end method

.method public abstract updateFavImg(Ljava/lang/String;)V
.end method

.method public abstract updateLoopBtn(Z)V
.end method

.method public abstract updateTitle(Ljava/lang/String;)V
.end method

.method public abstract updateTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateVideoChannelData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;",
            ">;)V"
        }
    .end annotation
.end method
