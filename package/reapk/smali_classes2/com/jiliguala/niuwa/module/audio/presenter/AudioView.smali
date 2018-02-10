.class public interface abstract Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/search/SearchView;


# virtual methods
.method public abstract dismissLoadingProgress()V
.end method

.method public abstract doShareAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enableButtons(Z)V
.end method

.method public abstract getSubscriptions()Lrx/i/b;
.end method

.method public abstract getThisFragmentManager()Landroid/support/v4/app/ag;
.end method

.method public abstract gotoChannelSelect(Ljava/lang/String;)V
.end method

.method public abstract isFromPractise()Z
.end method

.method public abstract launchOfflineMode()V
.end method

.method public abstract onAlreadySwitchToFirst()V
.end method

.method public abstract onClickFavThisSong()V
.end method

.method public abstract onClickUnFavThisSong(Ljava/lang/String;)V
.end method

.method public abstract onLyricLoadComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLyricLoadFailed()V
.end method

.method public abstract onLyricTxtLoadComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNetworkUnavailable()V
.end method

.method public abstract onPlayComplete()Z
.end method

.method public abstract onPlayError()Z
.end method

.method public abstract onPlayPause()V
.end method

.method public abstract onPlayPrepared(J)V
.end method

.method public abstract onPlayResume()V
.end method

.method public abstract onProgressUpdate(JJ)V
.end method

.method public abstract onResetLyricView()V
.end method

.method public abstract onSearchAction(Ljava/lang/String;)V
.end method

.method public abstract onSubCourseReportFailed()V
.end method

.method public abstract onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
.end method

.method public abstract pausePlayOnChannelShow()V
.end method

.method public abstract show3GNetStateDialog()V
.end method

.method public abstract showAddBabyPage()V
.end method

.method public abstract showChangeToOfflineDialog()V
.end method

.method public abstract showDownloadDeleteDialog(Ljava/lang/String;)V
.end method

.method public abstract showLoadingProgress()V
.end method

.method public abstract showLoginPage()V
.end method

.method public abstract showOfflineListEmtpyWarning()V
.end method

.method public abstract showPopFragment(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
.end method

.method public abstract switchOnPlayListEmpty()V
.end method

.method public abstract updateAudioChannelData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateBackGround(Ljava/lang/String;)V
.end method

.method public abstract updateCdCover(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateChannelName(Ljava/lang/String;)V
.end method

.method public abstract updateDownloadIcon(I)V
.end method

.method public abstract updateFavIcon(Z)V
.end method

.method public abstract updateLoopBtn(Z)V
.end method

.method public abstract updateLyricView(I)V
.end method

.method public abstract updateMoreLyricBtn(I)V
.end method

.method public abstract updateTitle(Ljava/lang/String;)V
.end method

.method public abstract updateTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V
.end method
