.class public Lorg/xwalk/core/XWalkView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ANIMATABLE:Ljava/lang/String; = "animatable"

.field public static final RELOAD_IGNORE_CACHE:I = 0x1

.field public static final RELOAD_NORMAL:I = 0x0

.field public static final SURFACE_VIEW:Ljava/lang/String; = "SurfaceView"

.field public static final TEXTURE_VIEW:Ljava/lang/String; = "TextureView"

.field private static final XWALK_ATTRS_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private bridge:Ljava/lang/Object;

.field private canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

.field private canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

.field private captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

.field private computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

.field private computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

.field private computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

.field private computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

.field private computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

.field private constructorParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private constructorTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

.field private evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

.field private findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

.field private getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

.field private getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

.field private getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

.field private getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

.field private getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

.field private getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

.field private getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

.field private getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

.field private getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

.field private getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

.field private getTitleMethod:Lorg/xwalk/core/ReflectMethod;

.field private getUrlMethod:Lorg/xwalk/core/ReflectMethod;

.field private getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

.field private hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

.field private leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadDataStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadDataWithBaseURLStringStringStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadUrlStringMapMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadUrlStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private mAnimatable:Ljava/lang/String;

.field private onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

.field private onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

.field private onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

.field private onHideMethod:Lorg/xwalk/core/ReflectMethod;

.field private onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

.field private onShowMethod:Lorg/xwalk/core/ReflectMethod;

.field private onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

.field private pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

.field private reloadintMethod:Lorg/xwalk/core/ReflectMethod;

.field private removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

.field private resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

.field private saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

.field private scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

.field private scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

.field private setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

.field private setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

.field private stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

.field private zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

.field private zoomInMethod:Lorg/xwalk/core/ReflectMethod;

.field private zoomOutMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const-class v0, Lorg/xwalk/core/XWalkView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/XWalkView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 247
    invoke-direct {p0, p1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 380
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 407
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 452
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadDataStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 497
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadDataWithBaseURL"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadDataWithBaseURLStringStringStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 521
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadUrlStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 551
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadUrlStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 578
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadAppFromManifest"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 598
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "reload"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 617
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "stopLoading"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

    .line 638
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 658
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getHitTestResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

    .line 680
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getContentHeight"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

    .line 701
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getTitle"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 721
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getOriginalUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 742
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getNavigationHistory"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

    .line 766
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "addJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 789
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "removeJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 810
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "evaluateJavascript"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    .line 831
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCache"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 852
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCacheForSingleFile"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 872
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "hasEnteredFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 892
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "leaveFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 917
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "pauseTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 942
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "resumeTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 965
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onHide"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Lorg/xwalk/core/ReflectMethod;

    .line 988
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onShow"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1009
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onDestroy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1031
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "startActivityForResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1058
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onActivityResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1082
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onNewIntent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1104
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "saveState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1125
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "restoreState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1145
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getAPIVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1165
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getXWalkVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1187
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUIClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1209
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setResourceClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1225
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setBackgroundColor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1246
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOriginAccessWhitelist"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1270
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1290
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1310
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setAcceptLanguages"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1330
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "captureBitmapAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1350
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getSettings"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1371
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setNetworkAvailable"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1392
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getRemoteDebuggingUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1412
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1432
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1454
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1474
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1494
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1516
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onCreateInputConnection"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1536
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setInitialScale"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1556
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getFavicon"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1577
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setZOrderOnTop"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1599
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearFormData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1631
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setSurfaceViewVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1652
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setXWalkViewInternalVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1675
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setDownloadListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1697
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onTouchEvent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1722
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOnTouchListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1738
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollTo"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1754
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1774
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1795
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1815
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1836
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1857
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollExtent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1877
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getExtensionManager"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1897
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearSslPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1919
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearClientCertPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1940
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCertificate"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1962
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setFindListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1985
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findAllAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 2010
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findNext"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 2030
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearMatches"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 2050
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCompositingSurfaceType"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 248
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;)V

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    .line 253
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    .line 256
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "postXWalkViewInternalContextConstructor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, p0, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    .line 261
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkView;->reflectionInit()V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 320
    invoke-direct {p0, p1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 380
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 407
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 452
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadDataStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 497
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadDataWithBaseURL"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadDataWithBaseURLStringStringStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 521
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadUrlStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 551
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadUrlStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 578
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadAppFromManifest"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 598
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "reload"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 617
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "stopLoading"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

    .line 638
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 658
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getHitTestResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

    .line 680
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getContentHeight"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

    .line 701
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getTitle"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 721
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getOriginalUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 742
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getNavigationHistory"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

    .line 766
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "addJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 789
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "removeJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 810
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "evaluateJavascript"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    .line 831
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCache"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 852
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCacheForSingleFile"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 872
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "hasEnteredFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 892
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "leaveFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 917
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "pauseTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 942
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "resumeTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 965
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onHide"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Lorg/xwalk/core/ReflectMethod;

    .line 988
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onShow"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1009
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onDestroy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1031
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "startActivityForResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1058
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onActivityResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1082
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onNewIntent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1104
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "saveState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1125
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "restoreState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1145
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getAPIVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1165
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getXWalkVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1187
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUIClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1209
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setResourceClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1225
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setBackgroundColor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1246
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOriginAccessWhitelist"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1270
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1290
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1310
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setAcceptLanguages"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1330
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "captureBitmapAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1350
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getSettings"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1371
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setNetworkAvailable"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1392
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getRemoteDebuggingUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1412
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1432
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1454
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1474
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1494
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1516
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onCreateInputConnection"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1536
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setInitialScale"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1556
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getFavicon"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1577
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setZOrderOnTop"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1599
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearFormData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1631
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setSurfaceViewVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1652
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setXWalkViewInternalVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1675
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setDownloadListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1697
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onTouchEvent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1722
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOnTouchListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1738
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollTo"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1754
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1774
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1795
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1815
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1836
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1857
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollExtent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1877
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getExtensionManager"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1897
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearSslPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1919
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearClientCertPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1940
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCertificate"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1962
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setFindListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1985
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findAllAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 2010
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findNext"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 2030
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearMatches"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 2050
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCompositingSurfaceType"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 321
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;)V

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    .line 326
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    .line 330
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "postXWalkViewInternalContextActivityConstructor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, p0, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    .line 336
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkView;->reflectionInit()V

    .line 337
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 279
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 380
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 407
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 452
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadDataStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 497
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadDataWithBaseURL"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadDataWithBaseURLStringStringStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 521
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadUrlStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 551
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadUrlStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 578
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadAppFromManifest"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 598
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "reload"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 617
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "stopLoading"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

    .line 638
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 658
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getHitTestResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

    .line 680
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getContentHeight"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

    .line 701
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getTitle"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 721
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getOriginalUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 742
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getNavigationHistory"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

    .line 766
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "addJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 789
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "removeJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 810
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "evaluateJavascript"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    .line 831
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCache"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 852
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCacheForSingleFile"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 872
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "hasEnteredFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 892
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "leaveFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 917
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "pauseTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 942
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "resumeTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 965
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onHide"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Lorg/xwalk/core/ReflectMethod;

    .line 988
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onShow"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1009
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onDestroy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1031
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "startActivityForResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1058
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onActivityResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1082
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onNewIntent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1104
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "saveState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1125
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "restoreState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1145
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getAPIVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1165
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getXWalkVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1187
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUIClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1209
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setResourceClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1225
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setBackgroundColor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1246
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOriginAccessWhitelist"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1270
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1290
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1310
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setAcceptLanguages"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1330
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "captureBitmapAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1350
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getSettings"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1371
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setNetworkAvailable"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1392
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getRemoteDebuggingUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1412
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1432
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1454
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1474
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1494
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1516
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onCreateInputConnection"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1536
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setInitialScale"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1556
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getFavicon"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1577
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setZOrderOnTop"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1599
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearFormData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1631
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setSurfaceViewVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1652
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setXWalkViewInternalVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1675
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setDownloadListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1697
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onTouchEvent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1722
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOnTouchListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1738
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollTo"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1754
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1774
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1795
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1815
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1836
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1857
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollExtent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1877
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getExtensionManager"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1897
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearSslPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1919
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearClientCertPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1940
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCertificate"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1962
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setFindListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1985
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findAllAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 2010
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findNext"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 2030
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearMatches"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 2050
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCompositingSurfaceType"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 280
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 281
    :cond_0
    if-eqz p2, :cond_1

    .line 282
    const-string v1, "http://schemas.android.com/apk/res-auto"

    const-string v2, "animatable"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->mAnimatable:Ljava/lang/String;

    .line 284
    :cond_1
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 285
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;)V

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    .line 289
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    const-class v2, Landroid/util/AttributeSet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    .line 293
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "postXWalkViewInternalContextAttributeSetConstructor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, p0, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    .line 299
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkView;->reflectionInit()V

    goto :goto_0
.end method

.method private onFocusChangedDelegate(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1703
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/XWalkView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1704
    return-void
.end method

.method private onOverScrolledDelegate(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 1706
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/XWalkView;->onOverScrolled(IIZZ)V

    .line 1707
    return-void
.end method

.method private onScrollChangedDelegate(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 1700
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/XWalkView;->onScrollChanged(IIII)V

    .line 1701
    return-void
.end method

.method private onTouchEventDelegate(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1681
    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private performLongClickDelegate()Z
    .locals 1

    .prologue
    .line 1678
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkView;->performLongClick()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 754
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :goto_0
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 757
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 758
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 760
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1463
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1471
    :goto_0
    return v1

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1466
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1468
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1471
    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1483
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1491
    :goto_0
    return v1

    .line 1484
    :catch_0
    move-exception v0

    .line 1485
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1486
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1488
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1491
    goto :goto_0
.end method

.method public captureBitmapAsync(Lorg/xwalk/core/XWalkGetBitmapCallback;)V
    .locals 5
    .param p1, "callback"    # Lorg/xwalk/core/XWalkGetBitmapCallback;

    .prologue
    .line 1319
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkGetBitmapCallback;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :goto_0
    return-void

    .line 1320
    :catch_0
    move-exception v0

    .line 1321
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1322
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1324
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 5
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 820
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 823
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 825
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearCacheForSingleFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 841
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :goto_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 844
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 846
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1908
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    :goto_0
    return-void

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1911
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1913
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 3

    .prologue
    .line 1588
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    :goto_0
    return-void

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1591
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1593
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearMatches()V
    .locals 3

    .prologue
    .line 2019
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    :goto_0
    return-void

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 2022
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2024
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 3

    .prologue
    .line 1886
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    :goto_0
    return-void

    .line 1887
    :catch_0
    move-exception v0

    .line 1888
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1889
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1891
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1784
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1792
    :goto_0
    return v1

    .line 1785
    :catch_0
    move-exception v0

    .line 1786
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1787
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1789
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1792
    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1763
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1771
    :goto_0
    return v1

    .line 1764
    :catch_0
    move-exception v0

    .line 1765
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1766
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1768
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1771
    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1846
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1854
    :goto_0
    return v1

    .line 1847
    :catch_0
    move-exception v0

    .line 1848
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1849
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1851
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1854
    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1825
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1833
    :goto_0
    return v1

    .line 1826
    :catch_0
    move-exception v0

    .line 1827
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1828
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1830
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1833
    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1804
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1812
    :goto_0
    return v1

    .line 1805
    :catch_0
    move-exception v0

    .line 1806
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1807
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1809
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1812
    goto :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 4
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 802
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 804
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1974
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    :goto_0
    return-void

    .line 1975
    :catch_0
    move-exception v0

    .line 1976
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1977
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1979
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .prologue
    .line 1999
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2008
    :goto_0
    return-void

    .line 2000
    :catch_0
    move-exception v0

    .line 2001
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 2002
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2004
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1134
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :goto_0
    return-object v1

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1137
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1139
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 1142
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 3

    .prologue
    .line 1929
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/http/SslCertificate;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :goto_0
    return-object v1

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1932
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1934
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 1937
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompositingSurfaceType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2039
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2047
    :goto_0
    return-object v1

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 2042
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2044
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 2047
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 669
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 677
    :goto_0
    return v1

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 672
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 674
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 677
    goto :goto_0
.end method

.method public getExtensionManager()Lorg/xwalk/core/XWalkExternalExtensionManager;
    .locals 4

    .prologue
    .line 1866
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkView;->getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkExternalExtensionManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    :goto_0
    return-object v1

    .line 1867
    :catch_0
    move-exception v0

    .line 1868
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1869
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1871
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 1874
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1545
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1553
    :goto_0
    return-object v1

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1548
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1550
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 1553
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Lorg/xwalk/core/XWalkHitTestResult;
    .locals 4

    .prologue
    .line 647
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkView;->getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkHitTestResult;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-object v1

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 650
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 655
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;
    .locals 4

    .prologue
    .line 731
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkNavigationHistory;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    return-object v1

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 734
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 739
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 710
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_0
    return-object v1

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 713
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 715
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 718
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemoteDebuggingUrl()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 1381
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    :goto_0
    return-object v1

    .line 1382
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1384
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1386
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 1389
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSettings()Lorg/xwalk/core/XWalkSettings;
    .locals 4

    .prologue
    .line 1339
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkView;->getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkSettings;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :goto_0
    return-object v1

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1342
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1344
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 1347
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 690
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return-object v1

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 693
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 698
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 627
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-object v1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 630
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 635
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1279
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    :goto_0
    return-object v1

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1282
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1284
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 1287
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1154
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :goto_0
    return-object v1

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1157
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1159
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 1162
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasEnteredFullscreen()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 861
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 869
    :goto_0
    return v1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 864
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 866
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 869
    goto :goto_0
.end method

.method public leaveFullscreen()V
    .locals 3

    .prologue
    .line 881
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 884
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 886
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 399
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 567
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 570
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 572
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->loadDataStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 444
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 486
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->loadDataWithBaseURLStringStringStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 489
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 510
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->loadUrlStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 513
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->loadUrlStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 543
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1047
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1050
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1052
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1505
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    :goto_0
    return-object v1

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1508
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1510
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 1513
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 998
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :goto_0
    return-void

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1001
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1003
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 3

    .prologue
    .line 954
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 957
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 959
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1071
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1079
    :goto_0
    return v1

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1074
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1076
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1079
    goto :goto_0
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 977
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :goto_0
    return-void

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 980
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 982
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1686
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1694
    :goto_0
    return v1

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1689
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1691
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1694
    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 3

    .prologue
    .line 906
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 909
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public postXWalkViewInternalContextActivityConstructor()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 340
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->removeViewAt(I)V

    .line 344
    new-instance v0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;

    invoke-direct {v0, p0}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 345
    return-void
.end method

.method public postXWalkViewInternalContextAttributeSetConstructor()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 303
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->removeViewAt(I)V

    .line 307
    new-instance v0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;

    invoke-direct {v0, p0}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 308
    return-void
.end method

.method public postXWalkViewInternalContextConstructor()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 265
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->removeViewAt(I)V

    .line 269
    new-instance v0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;

    invoke-direct {v0, p0}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 270
    return-void
.end method

.method reflectionInit()V
    .locals 14

    .prologue
    .line 2054
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 2056
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 2057
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v6, :cond_0

    .line 2058
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 2241
    :goto_0
    return-void

    .line 2062
    :cond_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2063
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    .line 2064
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 2065
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 2066
    .local v5, "type":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2067
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "type":Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v2

    .line 2068
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v8, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2064
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2069
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_2
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 2070
    check-cast v5, Ljava/lang/Class;

    .end local v5    # "type":Ljava/lang/Object;
    aput-object v5, v4, v2

    goto :goto_2

    .line 2072
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_3
    sget-boolean v6, Lorg/xwalk/core/XWalkView;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2076
    .end local v5    # "type":Ljava/lang/Object;
    :cond_4
    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 2077
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2079
    new-instance v0, Lorg/xwalk/core/ReflectConstructor;

    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v7, "XWalkViewBridge"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/xwalk/core/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 2082
    .local v0, "constructor":Lorg/xwalk/core/ReflectConstructor;
    :try_start_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/xwalk/core/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2087
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    :cond_5
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "loadSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2091
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "loadSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/util/Map;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2093
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->loadDataStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "loadDataSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2095
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->loadDataWithBaseURLStringStringStringStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "loadDataWithBaseURLSuper"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2097
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->loadUrlStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "loadUrlSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2099
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->loadUrlStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "loadUrlSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/util/Map;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2101
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "loadAppFromManifestSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2103
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "reloadSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2105
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "stopLoadingSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2107
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getUrlSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2109
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getHitTestResultSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2111
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getContentHeightSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2113
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getTitleSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2115
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getOriginalUrlSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2117
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getNavigationHistorySuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2119
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "addJavascriptInterfaceSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2121
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "removeJavascriptInterfaceSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2123
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "evaluateJavascriptSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/webkit/ValueCallback;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2125
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearCacheSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2127
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearCacheForSingleFileSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2129
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "hasEnteredFullscreenSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2131
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "leaveFullscreenSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2133
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "pauseTimersSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2135
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "resumeTimersSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2137
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onHideSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2139
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onShowSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2141
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onDestroySuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2143
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "startActivityForResultSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Intent;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2145
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onActivityResultSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/content/Intent;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2147
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onNewIntentSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Intent;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2149
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "saveStateSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2151
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restoreStateSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2153
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getAPIVersionSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2155
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getXWalkVersionSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2157
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setUIClientSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkUIClientBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2159
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setResourceClientSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkResourceClientBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2161
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setBackgroundColorSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2163
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setOriginAccessWhitelistSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, [Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2165
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setUserAgentStringSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2167
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getUserAgentStringSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2169
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setAcceptLanguagesSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2171
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "captureBitmapAsyncSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkGetBitmapCallbackBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2173
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getSettingsSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2175
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setNetworkAvailableSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2177
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getRemoteDebuggingUrlSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2179
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->zoomInMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "zoomInSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2181
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->zoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "zoomOutSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2183
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "zoomBySuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2185
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "canZoomInSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2187
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "canZoomOutSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2189
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onCreateInputConnectionSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/inputmethod/EditorInfo;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2191
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setInitialScaleSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2193
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getFaviconSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2195
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setZOrderOnTopSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2197
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearFormDataSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2199
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setSurfaceViewVisibilitySuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2201
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setXWalkViewInternalVisibilitySuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2203
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setDownloadListenerSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkDownloadListenerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2205
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onTouchEventSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/MotionEvent;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2207
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setOnTouchListenerSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/View$OnTouchListener;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2209
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "scrollToSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2211
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "scrollBySuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2213
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "computeHorizontalScrollRangeSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2215
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "computeHorizontalScrollOffsetSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2217
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "computeVerticalScrollRangeSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2219
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "computeVerticalScrollOffsetSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2221
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "computeVerticalScrollExtentSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2223
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getExtensionManagerSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2225
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearSslPreferencesSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2227
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearClientCertPreferencesSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Runnable;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2229
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getCertificateSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2231
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setFindListenerSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkFindListenerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2233
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "findAllAsyncSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2235
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "findNextSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2237
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearMatchesSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2239
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getCompositingSurfaceTypeSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 2083
    :catch_0
    move-exception v1

    .line 2084
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public reload(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 587
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 590
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 777
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 780
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 781
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 783
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1114
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1122
    :goto_0
    return v1

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1117
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1119
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1122
    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 3

    .prologue
    .line 931
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :goto_0
    return-void

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 934
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 936
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1093
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1101
    :goto_0
    return v1

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1096
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1098
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1101
    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1743
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    :goto_0
    return-void

    .line 1744
    :catch_0
    move-exception v0

    .line 1745
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1746
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1748
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1727
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    :goto_0
    return-void

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1730
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1732
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 4
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 1299
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :goto_0
    return-void

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1302
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1304
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 1214
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    :goto_0
    return-void

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1217
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1219
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setDownloadListener(Lorg/xwalk/core/XWalkDownloadListener;)V
    .locals 7
    .param p1, "listener"    # Lorg/xwalk/core/XWalkDownloadListener;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1663
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkDownloadListener;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    :goto_0
    return-void

    .line 1664
    :catch_0
    move-exception v0

    .line 1665
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1666
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/xwalk/core/ReflectMethod;

    const-string v4, "getBridge"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-direct {v3, p1, v4, v5}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1667
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1669
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setFindListener(Lorg/xwalk/core/XWalkFindListener;)V
    .locals 7
    .param p1, "listener"    # Lorg/xwalk/core/XWalkFindListener;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1950
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkFindListener;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1960
    :goto_0
    return-void

    .line 1951
    :catch_0
    move-exception v0

    .line 1952
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1953
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/xwalk/core/ReflectMethod;

    const-string v4, "getBridge"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-direct {v3, p1, v4, v5}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1954
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1956
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setInitialScale(I)V
    .locals 5
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 1525
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    :goto_0
    return-void

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1528
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1530
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1250
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 5
    .param p1, "networkUp"    # Z

    .prologue
    .line 1360
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :goto_0
    return-void

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1363
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1365
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 4
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 1711
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1720
    :goto_0
    return-void

    .line 1712
    :catch_0
    move-exception v0

    .line 1713
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1714
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1716
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setOriginAccessWhitelist(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 1235
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :goto_0
    return-void

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1238
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1240
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setResourceClient(Lorg/xwalk/core/XWalkResourceClient;)V
    .locals 7
    .param p1, "client"    # Lorg/xwalk/core/XWalkResourceClient;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1197
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkResourceClient;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :goto_0
    return-void

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1200
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/xwalk/core/ReflectMethod;

    const-string v4, "getBridge"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-direct {v3, p1, v4, v5}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1201
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1203
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setSurfaceViewVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1619
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    :goto_0
    return-void

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1622
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1623
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1625
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/XWalkUIClient;)V
    .locals 7
    .param p1, "client"    # Lorg/xwalk/core/XWalkUIClient;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1175
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkUIClient;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :goto_0
    return-void

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1178
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/xwalk/core/ReflectMethod;

    const-string v4, "getBridge"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-direct {v3, p1, v4, v5}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1179
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1181
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 1259
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    :goto_0
    return-void

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1262
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1264
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1607
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 p1, 0x8

    .line 1608
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1609
    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibility(I)V

    .line 1610
    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibility(I)V

    .line 1611
    return-void
.end method

.method public setXWalkViewInternalVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1640
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :goto_0
    return-void

    .line 1641
    :catch_0
    move-exception v0

    .line 1642
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1643
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1644
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1646
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 5
    .param p1, "onTop"    # Z

    .prologue
    .line 1566
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    :goto_0
    return-void

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1569
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1571
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1020
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1023
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1025
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 606
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 609
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public zoomBy(F)V
    .locals 5
    .param p1, "factor"    # F

    .prologue
    .line 1443
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    :goto_0
    return-void

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1446
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1448
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1401
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomInMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1409
    :goto_0
    return v1

    .line 1402
    :catch_0
    move-exception v0

    .line 1403
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1404
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1406
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1409
    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1421
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1429
    :goto_0
    return v1

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1424
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1426
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 1429
    goto :goto_0
.end method
