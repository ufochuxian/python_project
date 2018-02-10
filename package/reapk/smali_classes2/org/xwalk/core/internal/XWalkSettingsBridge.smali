.class public Lorg/xwalk/core/internal/XWalkSettingsBridge;
.super Lorg/xwalk/core/internal/XWalkSettingsInternal;
.source "SourceFile"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

.field private setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;-><init>()V

    .line 23
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 54
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setCacheMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 76
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getCacheMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 95
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBlockNetworkLoads"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 117
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getBlockNetworkLoads"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 136
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAllowFileAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 158
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAllowFileAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 177
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAllowContentAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 199
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAllowContentAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 218
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setJavaScriptEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 237
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAllowUniversalAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 256
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAllowFileAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 275
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLoadsImagesAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 297
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getLoadsImagesAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 316
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBlockNetworkImage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 338
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getBlockNetworkImage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 360
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getJavaScriptEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 382
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAllowUniversalAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 404
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAllowFileAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 423
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setJavaScriptCanOpenWindowsAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 445
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getJavaScriptCanOpenWindowsAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 464
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSupportMultipleWindows"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 486
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "supportMultipleWindows"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 505
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUseWideViewPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 527
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUseWideViewPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 546
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDomStorageEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 568
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getDomStorageEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 587
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDatabaseEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 609
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getDatabaseEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 628
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setMediaPlaybackRequiresUserGesture"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 650
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getMediaPlaybackRequiresUserGesture"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 669
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 691
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 710
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 732
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 751
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSaveFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 773
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getSaveFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 792
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setInitialPageScale"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 811
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setTextZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 833
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTextZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 852
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDefaultFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 874
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getDefaultFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 893
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDefaultFixedFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 915
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getDefaultFixedFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 934
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSupportZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 956
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "supportZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 975
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBuiltInZoomControls"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 997
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getBuiltInZoomControls"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1019
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "supportsMultiTouchZoomForTest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1038
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSupportSpatialNavigation"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1060
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getSupportSpatialNavigation"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1079
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSupportQuirksMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1101
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getSupportQuirksMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1120
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLayoutAlgorithm"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1142
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getLayoutAlgorithm"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1161
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLoadWithOverviewMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1183
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getLoadWithOverviewMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 33
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .line 34
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->reflectionInit()V

    .line 35
    return-void
.end method

.method private ConvertLayoutAlgorithmInternal(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAcceptLanguages()Ljava/lang/String;
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesSuper()Ljava/lang/String;

    move-result-object v0

    .line 717
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAcceptLanguagesSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 723
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_1

    .line 724
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAcceptLanguages()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 729
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 726
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAcceptLanguages()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getAllowContentAccess()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessSuper()Z

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowContentAccessSuper()Z
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 191
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowContentAccess()Z

    move-result v0

    .line 196
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 193
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowContentAccess()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getAllowFileAccess()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessSuper()Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsSuper()Z

    move-result v0

    .line 389
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowFileAccessFromFileURLsSuper()Z
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 396
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    .line 401
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 398
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getAllowFileAccessSuper()Z
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 150
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowFileAccess()Z

    move-result v0

    .line 155
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 152
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowFileAccess()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsSuper()Z

    move-result v0

    .line 367
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowUniversalAccessFromFileURLsSuper()Z
    .locals 2

    .prologue
    .line 373
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 374
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    .line 379
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 376
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getBlockNetworkImage()Z
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageSuper()Z

    move-result v0

    .line 323
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getBlockNetworkImageSuper()Z
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 330
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBlockNetworkImage()Z

    move-result v0

    .line 335
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 332
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBlockNetworkImage()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getBlockNetworkLoads()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsSuper()Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getBlockNetworkLoadsSuper()Z
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 109
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBlockNetworkLoads()Z

    move-result v0

    .line 114
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 111
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBlockNetworkLoads()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getBuiltInZoomControls()Z
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsSuper()Z

    move-result v0

    .line 982
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getBuiltInZoomControlsSuper()Z
    .locals 2

    .prologue
    .line 988
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 989
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBuiltInZoomControls()Z

    move-result v0

    .line 994
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 991
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBuiltInZoomControls()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getCacheMode()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeSuper()I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getCacheModeSuper()I
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 68
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getCacheMode()I

    move-result v0

    .line 73
    .local v0, "ret":I
    :goto_0
    return v0

    .line 70
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getCacheMode()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getDatabaseEnabled()Z
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledSuper()Z

    move-result v0

    .line 594
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getDatabaseEnabledSuper()Z
    .locals 2

    .prologue
    .line 600
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 601
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDatabaseEnabled()Z

    move-result v0

    .line 606
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 603
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDatabaseEnabled()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getDefaultFixedFontSize()I
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeSuper()I

    move-result v0

    .line 900
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultFixedFontSizeSuper()I
    .locals 2

    .prologue
    .line 906
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 907
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFixedFontSize()I

    move-result v0

    .line 912
    .local v0, "ret":I
    :goto_0
    return v0

    .line 909
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFixedFontSize()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getDefaultFontSize()I
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeSuper()I

    move-result v0

    .line 859
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultFontSizeSuper()I
    .locals 2

    .prologue
    .line 865
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 866
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFontSize()I

    move-result v0

    .line 871
    .local v0, "ret":I
    :goto_0
    return v0

    .line 868
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFontSize()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getDomStorageEnabled()Z
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledSuper()Z

    move-result v0

    .line 553
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getDomStorageEnabledSuper()Z
    .locals 2

    .prologue
    .line 559
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 560
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDomStorageEnabled()Z

    move-result v0

    .line 565
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 562
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDomStorageEnabled()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallySuper()Z

    move-result v0

    .line 430
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getJavaScriptCanOpenWindowsAutomaticallySuper()Z
    .locals 2

    .prologue
    .line 436
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 437
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    .line 442
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 439
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getJavaScriptEnabled()Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledSuper()Z

    move-result v0

    .line 345
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getJavaScriptEnabledSuper()Z
    .locals 2

    .prologue
    .line 351
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 352
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getJavaScriptEnabled()Z

    move-result v0

    .line 357
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 354
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getJavaScriptEnabled()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getLayoutAlgorithm()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmSuper()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    move-result-object v0

    .line 1127
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    goto :goto_0
.end method

.method public getLayoutAlgorithmSuper()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    .locals 2

    .prologue
    .line 1133
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_1

    .line 1134
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLayoutAlgorithm()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    move-result-object v0

    .line 1138
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1139
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    :cond_0
    return-object v0

    .line 1136
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLayoutAlgorithm()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    move-result-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    goto :goto_0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 2

    .prologue
    .line 1165
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeSuper()Z

    move-result v0

    .line 1168
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getLoadWithOverviewModeSuper()Z
    .locals 2

    .prologue
    .line 1174
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 1175
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLoadWithOverviewMode()Z

    move-result v0

    .line 1180
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1177
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLoadWithOverviewMode()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallySuper()Z

    move-result v0

    .line 282
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getLoadsImagesAutomaticallySuper()Z
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 289
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLoadsImagesAutomatically()Z

    move-result v0

    .line 294
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 291
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLoadsImagesAutomatically()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureSuper()Z

    move-result v0

    .line 635
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getMediaPlaybackRequiresUserGestureSuper()Z
    .locals 2

    .prologue
    .line 641
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 642
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    .line 647
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 644
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getSaveFormData()Z
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataSuper()Z

    move-result v0

    .line 758
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getSaveFormDataSuper()Z
    .locals 2

    .prologue
    .line 764
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 765
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSaveFormData()Z

    move-result v0

    .line 770
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 767
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSaveFormData()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getSupportQuirksMode()Z
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1084
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeSuper()Z

    move-result v0

    .line 1086
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getSupportQuirksModeSuper()Z
    .locals 2

    .prologue
    .line 1092
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 1093
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSupportQuirksMode()Z

    move-result v0

    .line 1098
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1095
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSupportQuirksMode()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getSupportSpatialNavigation()Z
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationSuper()Z

    move-result v0

    .line 1045
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getSupportSpatialNavigationSuper()Z
    .locals 2

    .prologue
    .line 1051
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 1052
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSupportSpatialNavigation()Z

    move-result v0

    .line 1057
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1054
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSupportSpatialNavigation()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getTextZoom()I
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomSuper()I

    move-result v0

    .line 818
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getTextZoomSuper()I
    .locals 2

    .prologue
    .line 824
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 825
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getTextZoom()I

    move-result v0

    .line 830
    .local v0, "ret":I
    :goto_0
    return v0

    .line 827
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getTextZoom()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getUseWideViewPort()Z
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortSuper()Z

    move-result v0

    .line 512
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getUseWideViewPortSuper()Z
    .locals 2

    .prologue
    .line 518
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 519
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUseWideViewPort()Z

    move-result v0

    .line 524
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 521
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUseWideViewPort()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringSuper()Ljava/lang/String;

    move-result-object v0

    .line 676
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgentStringSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 682
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_1

    .line 683
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 688
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 685
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1187
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 1188
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 1313
    :goto_0
    return-void

    .line 1190
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkSettings"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v8

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 1193
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v4, "XWalkSettings$LayoutAlgorithm"

    invoke-virtual {v3, v4}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "valueOf"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v9, v3, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1201
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setCacheMode"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1203
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getCacheMode"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1205
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setBlockNetworkLoads"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1207
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getBlockNetworkLoads"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1209
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setAllowFileAccess"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1211
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getAllowFileAccess"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1213
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setAllowContentAccess"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1215
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getAllowContentAccess"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1217
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setJavaScriptEnabled"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1219
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setAllowUniversalAccessFromFileURLs"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1221
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setAllowFileAccessFromFileURLs"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1223
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setLoadsImagesAutomatically"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1225
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getLoadsImagesAutomatically"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1227
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setBlockNetworkImage"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1229
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getBlockNetworkImage"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1231
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getJavaScriptEnabled"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1233
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getAllowUniversalAccessFromFileURLs"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1235
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getAllowFileAccessFromFileURLs"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1237
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setJavaScriptCanOpenWindowsAutomatically"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1239
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getJavaScriptCanOpenWindowsAutomatically"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1241
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setSupportMultipleWindows"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1243
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "supportMultipleWindows"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1245
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setUseWideViewPort"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1247
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getUseWideViewPort"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1249
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setDomStorageEnabled"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1251
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getDomStorageEnabled"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1253
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setDatabaseEnabled"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1255
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getDatabaseEnabled"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1257
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setMediaPlaybackRequiresUserGesture"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1259
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getMediaPlaybackRequiresUserGesture"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1261
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setUserAgentString"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1263
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getUserAgentString"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1265
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setAcceptLanguages"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1267
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getAcceptLanguages"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1269
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setSaveFormData"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1271
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getSaveFormData"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1273
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setInitialPageScale"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1275
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setTextZoom"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1277
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getTextZoom"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1279
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setDefaultFontSize"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1281
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getDefaultFontSize"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1283
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setDefaultFixedFontSize"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1285
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getDefaultFixedFontSize"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1287
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setSupportZoom"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1289
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "supportZoom"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1291
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setBuiltInZoomControls"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1293
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getBuiltInZoomControls"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1295
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "supportsMultiTouchZoomForTest"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1297
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setSupportSpatialNavigation"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1299
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getSupportSpatialNavigation"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1301
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setSupportQuirksMode"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1303
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getSupportQuirksMode"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1305
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setLayoutAlgorithm"

    new-array v5, v10, [Ljava/lang/Class;

    iget-object v6, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v7, "XWalkSettings$LayoutAlgorithm"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1307
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getLayoutAlgorithm"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1309
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setLoadWithOverviewMode"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1311
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getLoadWithOverviewMode"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 1194
    :catch_0
    move-exception v1

    .line 1195
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 3
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 695
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesSuper(Ljava/lang/String;)V

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAcceptLanguagesSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 703
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 704
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAcceptLanguages(Ljava/lang/String;)V

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAcceptLanguages(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAllowContentAccess(Z)V
    .locals 4
    .param p1, "allow"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessSuper(Z)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAllowContentAccessSuper(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 171
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowContentAccess(Z)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowContentAccess(Z)V

    goto :goto_0
.end method

.method public setAllowFileAccess(Z)V
    .locals 4
    .param p1, "allow"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessSuper(Z)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsSuper(Z)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAllowFileAccessFromFileURLsSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 250
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowFileAccessFromFileURLs(Z)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowFileAccessFromFileURLs(Z)V

    goto :goto_0
.end method

.method public setAllowFileAccessSuper(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowFileAccess(Z)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowFileAccess(Z)V

    goto :goto_0
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 222
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsSuper(Z)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAllowUniversalAccessFromFileURLsSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 231
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowUniversalAccessFromFileURLs(Z)V

    goto :goto_0
.end method

.method public setBlockNetworkImage(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 301
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImageSuper(Z)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBlockNetworkImageSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 310
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBlockNetworkImage(Z)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBlockNetworkImage(Z)V

    goto :goto_0
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsSuper(Z)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBlockNetworkLoadsSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 89
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBlockNetworkLoads(Z)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBlockNetworkLoads(Z)V

    goto :goto_0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 960
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsSuper(Z)V

    .line 965
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBuiltInZoomControlsSuper(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 968
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 969
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBuiltInZoomControls(Z)V

    .line 973
    :goto_0
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBuiltInZoomControls(Z)V

    goto :goto_0
.end method

.method public setCacheMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeSuper(I)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCacheModeSuper(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setCacheMode(I)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setCacheMode(I)V

    goto :goto_0
.end method

.method public setDatabaseEnabled(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 572
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledSuper(Z)V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDatabaseEnabledSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 581
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDatabaseEnabled(Z)V

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDatabaseEnabled(Z)V

    goto :goto_0
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 878
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeSuper(I)V

    .line 883
    :goto_0
    return-void

    .line 881
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDefaultFixedFontSizeSuper(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 886
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 887
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFixedFontSize(I)V

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFixedFontSize(I)V

    goto :goto_0
.end method

.method public setDefaultFontSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 837
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeSuper(I)V

    .line 842
    :goto_0
    return-void

    .line 840
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDefaultFontSizeSuper(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 845
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 846
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFontSize(I)V

    .line 850
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 531
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledSuper(Z)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDomStorageEnabledSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 539
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 540
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDomStorageEnabled(Z)V

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDomStorageEnabled(Z)V

    goto :goto_0
.end method

.method public setInitialPageScale(F)V
    .locals 4
    .param p1, "scaleInPercent"    # F

    .prologue
    .line 777
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScaleSuper(F)V

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setInitialPageScaleSuper(F)V
    .locals 1
    .param p1, "scaleInPercent"    # F

    .prologue
    .line 785
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 786
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setInitialPageScale(F)V

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setInitialPageScale(F)V

    goto :goto_0
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 408
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallySuper(Z)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setJavaScriptCanOpenWindowsAutomaticallySuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 416
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 417
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    goto :goto_0
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledSuper(Z)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setJavaScriptEnabledSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 212
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptEnabled(Z)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptEnabled(Z)V

    goto :goto_0
.end method

.method public setLayoutAlgorithm(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V
    .locals 4
    .param p1, "la"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .prologue
    .line 1105
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmSuper(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V

    .line 1110
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->ConvertLayoutAlgorithmInternal(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLayoutAlgorithmSuper(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V
    .locals 1
    .param p1, "la"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .prologue
    .line 1113
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 1114
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLayoutAlgorithm(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V

    .line 1118
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLayoutAlgorithm(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V

    goto :goto_0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 4
    .param p1, "overview"    # Z

    .prologue
    .line 1146
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModeSuper(Z)V

    .line 1151
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLoadWithOverviewModeSuper(Z)V
    .locals 1
    .param p1, "overview"    # Z

    .prologue
    .line 1154
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 1155
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLoadWithOverviewMode(Z)V

    .line 1159
    :goto_0
    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLoadWithOverviewMode(Z)V

    goto :goto_0
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 260
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallySuper(Z)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLoadsImagesAutomaticallySuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 269
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLoadsImagesAutomatically(Z)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLoadsImagesAutomatically(Z)V

    goto :goto_0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 4
    .param p1, "require"    # Z

    .prologue
    .line 613
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGestureSuper(Z)V

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMediaPlaybackRequiresUserGestureSuper(Z)V
    .locals 1
    .param p1, "require"    # Z

    .prologue
    .line 621
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 622
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setMediaPlaybackRequiresUserGesture(Z)V

    goto :goto_0
.end method

.method public setSaveFormData(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 736
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDataSuper(Z)V

    .line 741
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSaveFormDataSuper(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 744
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 745
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSaveFormData(Z)V

    .line 749
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSaveFormData(Z)V

    goto :goto_0
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 4
    .param p1, "support"    # Z

    .prologue
    .line 449
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsSuper(Z)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportMultipleWindowsSuper(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 457
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 458
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportMultipleWindows(Z)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportMultipleWindows(Z)V

    goto :goto_0
.end method

.method public setSupportQuirksMode(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1064
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModeSuper(Z)V

    .line 1069
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportQuirksModeSuper(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1072
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 1073
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportQuirksMode(Z)V

    .line 1077
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportQuirksMode(Z)V

    goto :goto_0
.end method

.method public setSupportSpatialNavigation(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1023
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationSuper(Z)V

    .line 1028
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportSpatialNavigationSuper(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1031
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 1032
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportSpatialNavigation(Z)V

    .line 1036
    :goto_0
    return-void

    .line 1034
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportSpatialNavigation(Z)V

    goto :goto_0
.end method

.method public setSupportZoom(Z)V
    .locals 4
    .param p1, "support"    # Z

    .prologue
    .line 919
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoomSuper(Z)V

    .line 924
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportZoomSuper(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 927
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 928
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportZoom(Z)V

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportZoom(Z)V

    goto :goto_0
.end method

.method public setTextZoom(I)V
    .locals 4
    .param p1, "textZoom"    # I

    .prologue
    .line 796
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomSuper(I)V

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTextZoomSuper(I)V
    .locals 1
    .param p1, "textZoom"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 805
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setTextZoom(I)V

    .line 809
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setTextZoom(I)V

    goto :goto_0
.end method

.method public setUseWideViewPort(Z)V
    .locals 4
    .param p1, "use"    # Z

    .prologue
    .line 490
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortSuper(Z)V

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUseWideViewPortSuper(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 498
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 499
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUseWideViewPort(Z)V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUseWideViewPort(Z)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringSuper(Ljava/lang/String;)V

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUserAgentStringSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 662
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 663
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUserAgentString(Ljava/lang/String;)V

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public supportMultipleWindows()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsSuper()Z

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public supportMultipleWindowsSuper()Z
    .locals 2

    .prologue
    .line 477
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 478
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportMultipleWindows()Z

    move-result v0

    .line 483
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 480
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportMultipleWindows()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public supportZoom()Z
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomSuper()Z

    move-result v0

    .line 941
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public supportZoomSuper()Z
    .locals 2

    .prologue
    .line 947
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 948
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportZoom()Z

    move-result v0

    .line 953
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 950
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportZoom()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public supportsMultiTouchZoomForTest()Z
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestSuper()Z

    move-result v0

    .line 1004
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public supportsMultiTouchZoomForTestSuper()Z
    .locals 2

    .prologue
    .line 1010
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 1011
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomForTest()Z

    move-result v0

    .line 1016
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1013
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomForTest()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method
