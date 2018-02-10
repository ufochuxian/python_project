.class Lorg/xwalk/core/internal/XWalkContentVideoViewClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/ContentVideoViewEmbedder;


# instance fields
.field private mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

.field private mView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClient;Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkContentsClient;
    .param p2, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    .line 23
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 24
    return-void
.end method


# virtual methods
.method public enterFullscreenVideo(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setOverlayVideoMode(Z)V

    .line 29
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    new-instance v1, Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;

    invoke-direct {v1}, Lorg/xwalk/core/internal/CustomViewCallbackHandlerInternal;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/xwalk/core/internal/XWalkContentsClient;->onShowCustomView(Landroid/view/View;Lorg/xwalk/core/internal/CustomViewCallbackInternal;)V

    .line 30
    return-void
.end method

.method public exitFullscreenVideo()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setOverlayVideoMode(Z)V

    .line 35
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->onHideCustomView()V

    .line 36
    return-void
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSystemUiVisibility(Z)V
    .locals 0
    .param p1, "enterFullscreen"    # Z

    .prologue
    .line 44
    return-void
.end method
