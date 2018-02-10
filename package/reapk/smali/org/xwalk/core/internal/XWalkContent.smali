.class Lorg/xwalk/core/internal/XWalkContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkContent$XWalkGeolocationCallback;,
        Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;,
        Lorg/xwalk/core/internal/XWalkContent$DestroyRunnable;,
        Lorg/xwalk/core/internal/XWalkContent$HitTestData;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final SAVE_RESTORE_STATE_KEY:Ljava/lang/String; = "XWALKVIEW_STATE"

.field private static TAG:Ljava/lang/String;

.field private static javascriptInterfaceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static timerPaused:Z


# instance fields
.field private mAnimated:Z

.field private mCleanupReference:Lorg/chromium/content/common/CleanupReference;

.field private mContentView:Lorg/xwalk/core/internal/XWalkContentView;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

.field private mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

.field private mDIPScale:D

.field private mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

.field private mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

.field private mGetBitmapCallback:Lorg/chromium/content_public/browser/ContentBitmapCallback;

.field private mIoThreadClient:Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;

.field private mIsLoaded:Z

.field private mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

.field mNativeContent:J

.field private mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private final mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

.field private mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

.field private mViewContext:Landroid/content/Context;

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWindow:Lorg/chromium/ui/base/WindowAndroid;

.field private mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

.field private mXWalkContentsDelegateAdapter:Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

.field private mXWalkGetBitmapCallbackInternal:Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const-class v0, Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->$assertionsDisabled:Z

    .line 70
    const-string v0, "XWalkContent"

    sput-object v0, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    .line 532
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    return-void

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animatable"    # Ljava/lang/String;
    .param p3, "xwView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    .line 89
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    .line 93
    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    invoke-direct {v1}, Lorg/xwalk/core/internal/XWalkContent$HitTestData;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    .line 134
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 135
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    .line 136
    new-instance v1, Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v1, v2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .line 137
    new-instance v1, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-direct {v1, v2}, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;-><init>(Lorg/xwalk/core/internal/XWalkContentsClient;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkContentsDelegateAdapter:Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

    .line 139
    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;-><init>(Lorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkContent$1;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mIoThreadClient:Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;

    .line 142
    invoke-static {p1}, Lorg/chromium/ui/base/WindowAndroid;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-direct {v1, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    .line 145
    new-instance v0, Lorg/xwalk/core/internal/InMemorySharedPreferences;

    invoke-direct {v0}, Lorg/xwalk/core/internal/InMemorySharedPreferences;-><init>()V

    .line 146
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    .line 148
    new-instance v1, Lorg/xwalk/core/internal/XWalkMediaPlayerResourceLoadingFilter;

    invoke-direct {v1}, Lorg/xwalk/core/internal/XWalkMediaPlayerResourceLoadingFilter;-><init>()V

    invoke-static {v1}, Lorg/chromium/media/MediaPlayerBridge;->setResourceLoadingFilter(Lorg/chromium/media/MediaPlayerBridge$ResourceLoadingFilter;)V

    .line 151
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContent;->nativeInit()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2}, Lorg/xwalk/core/internal/XWalkContent;->setNativeContent(JLjava/lang/String;)V

    .line 153
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->load(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V

    .line 154
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContent;->initCaptureBitmapAsync()V

    .line 155
    return-void

    .line 142
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v1, Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {v1, p1}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 69
    invoke-static {p0, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeDestroy(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkGetBitmapCallbackInternal:Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/XWalkContent;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method static synthetic access$500(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    return-object v0
.end method

.method static synthetic access$600(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    return-object v0
.end method

.method static synthetic access$700(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkGeolocationPermissions;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    return-object v0
.end method

.method static synthetic access$800(Lorg/xwalk/core/internal/XWalkContent;JZLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkContent;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    return-void
.end method

.method private doLoadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V
    .locals 1
    .param p1, "params"    # Lorg/chromium/content_public/browser/LoadUrlParams;

    .prologue
    .line 283
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setOverrideUserAgent(I)V

    .line 284
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationController;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    .line 285
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->requestFocus()Z

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    .line 287
    return-void
.end method

.method private static fixupBase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "about:blank"

    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static fixupData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    .end local p0    # "data":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static fixupHistory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "about:blank"

    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static fixupMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "text/html"

    .end local p0    # "mimeType":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private initCaptureBitmapAsync()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lorg/xwalk/core/internal/XWalkContent$1;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkContent$1;-><init>(Lorg/xwalk/core/internal/XWalkContent;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mGetBitmapCallback:Lorg/chromium/content_public/browser/ContentBitmapCallback;

    .line 165
    return-void
.end method

.method private static isBase64Encoded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "encoding"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, "base64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOpaque(I)Z
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 571
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeClearCache(JZ)V
.end method

.method private native nativeClearCacheForSingleFile(JLjava/lang/String;)V
.end method

.method private native nativeClearMatches(J)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private native nativeDevToolsAgentId(J)Ljava/lang/String;
.end method

.method private native nativeFindAllAsync(JLjava/lang/String;)V
.end method

.method private native nativeFindNext(JZ)V
.end method

.method private native nativeGetCertificate(J)[B
.end method

.method private native nativeGetRoutingID(J)I
.end method

.method private native nativeGetState(J)[B
.end method

.method private native nativeGetVersion(J)Ljava/lang/String;
.end method

.method private native nativeGetWebContents(J)Lorg/chromium/content_public/browser/WebContents;
.end method

.method private native nativeInit()J
.end method

.method private native nativeInvokeGeolocationCallback(JZLjava/lang/String;)V
.end method

.method private native nativeReleasePopupXWalkContent(J)J
.end method

.method private native nativeRequestNewHitTestDataAt(JFFF)V
.end method

.method private native nativeSetBackgroundColor(JI)V
.end method

.method private native nativeSetJavaPeers(JLorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;Lorg/xwalk/core/internal/XWalkContentsClientBridge;Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
.end method

.method private native nativeSetJsOnlineProperty(JZ)V
.end method

.method private native nativeSetManifest(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSetOriginAccessWhitelist(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetState(J[B)Z
.end method

.method private native nativeUpdateLastHitTestData(J)V
.end method

.method private onGeolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 913
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 928
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getGeolocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 916
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    goto :goto_0

    .line 920
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;->hasOrigin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 921
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    invoke-virtual {v2, p1}, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;->isOriginAllowed(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    goto :goto_0

    .line 926
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$XWalkGeolocationCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/xwalk/core/internal/XWalkContent$XWalkGeolocationCallback;-><init>(Lorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkContent$1;)V

    invoke-virtual {v0, p1, v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method private receivePopupContents(J)V
    .locals 1
    .param p1, "popupNativeXWalkContents"    # J

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/xwalk/core/internal/XWalkContent;->setNativeContent(JLjava/lang/String;)V

    .line 279
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    .line 280
    return-void
.end method

.method static setJavascriptInterfaceClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 113
    :cond_0
    sput-object p0, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    .line 114
    return-void
.end method

.method private setNativeContent(JLjava/lang/String;)V
    .locals 11
    .param p1, "newNativeContent"    # J
    .param p3, "animatable"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 175
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->destroy()V

    .line 177
    iput-object v7, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 180
    :cond_0
    sget-boolean v1, Lorg/xwalk/core/internal/XWalkContent;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 183
    :cond_2
    if-nez p3, :cond_4

    .line 184
    const-string v1, "animatable-xwalk-view"

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    .line 188
    :goto_0
    iget-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    if-eqz v1, :cond_5

    sget-object v9, Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;->TEXTURE_VIEW:Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;

    .line 190
    .local v9, "surfaceType":Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;
    :goto_1
    sget-object v2, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CompositingSurfaceType is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    if-eqz v1, :cond_6

    const-string v1, "TextureView"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$2;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v9}, Lorg/xwalk/core/internal/XWalkContent$2;-><init>(Lorg/xwalk/core/internal/XWalkContent;Landroid/content/Context;Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    .line 197
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->onNativeLibraryLoaded(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 198
    new-instance v1, Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkLaunchScreenManager;-><init>(Landroid/content/Context;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    .line 199
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->registerFirstRenderedFrameListener(Lorg/chromium/content/browser/ContentViewRenderView$FirstRenderedFrameListener;)V

    .line 200
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkViewInternal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    .line 208
    new-instance v1, Lorg/chromium/content/common/CleanupReference;

    new-instance v2, Lorg/xwalk/core/internal/XWalkContent$DestroyRunnable;

    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {v2, v4, v5, v7}, Lorg/xwalk/core/internal/XWalkContent$DestroyRunnable;-><init>(JLorg/xwalk/core/internal/XWalkContent$1;)V

    invoke-direct {v1, p0, v2}, Lorg/chromium/content/common/CleanupReference;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    .line 210
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetWebContents(J)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 213
    new-instance v1, Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/ContentViewCore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 214
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-static {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkContentView;->createContentView(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)Lorg/xwalk/core/internal/XWalkContentView;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    .line 216
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/chromium/content/browser/ContentViewCore;->initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V

    .line 217
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 218
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkViewInternal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    .line 222
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 224
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->installWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)V

    .line 230
    new-instance v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/xwalk/core/internal/XWalkSettingsInternal;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Z)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .line 233
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowFileAccessFromFileURLs(Z)V

    .line 236
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDIPScale()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    .line 237
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setDIPScale(D)V

    .line 238
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDIPScale(D)V

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "en"

    .line 242
    :cond_3
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1, v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAcceptLanguages(Ljava/lang/String;)V

    .line 244
    new-instance v10, Lorg/xwalk/core/internal/XWalkContent$3;

    invoke-direct {v10, p0}, Lorg/xwalk/core/internal/XWalkContent$3;-><init>(Lorg/xwalk/core/internal/XWalkContent;)V

    .line 253
    .local v10, "zoomListener":Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1, v10}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setZoomListener(Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;)V

    .line 255
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkContentsDelegateAdapter:Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

    iget-object v6, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v7, p0, Lorg/xwalk/core/internal/XWalkContent;->mIoThreadClient:Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getInterceptNavigationDelegate()Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    move-result-object v8

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetJavaPeers(JLorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;Lorg/xwalk/core/internal/XWalkContentsClientBridge;Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    .line 257
    return-void

    .line 187
    .end local v0    # "language":Ljava/lang/String;
    .end local v9    # "surfaceType":Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;
    .end local v10    # "zoomListener":Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;
    :cond_4
    const-string v1, "true"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    goto/16 :goto_0

    .line 188
    :cond_5
    sget-object v9, Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;->SURFACE_VIEW:Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;

    goto/16 :goto_1

    .line 190
    .restart local v9    # "surfaceType":Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;
    :cond_6
    const-string v1, "SurfaceView"

    goto/16 :goto_2
.end method

.method private setXWalkAutofillClient(Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1069
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

    .line 1070
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {p1, v0}, Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;->init(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 1071
    return-void
.end method

.method private updateHitTestData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "href"    # Ljava/lang/String;
    .param p4, "anchorText"    # Ljava/lang/String;
    .param p5, "imgSrc"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 938
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    iput p1, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->hitTestResultType:I

    .line 939
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    iput-object p2, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->hitTestResultExtraData:Ljava/lang/String;

    .line 940
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    iput-object p3, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->href:Ljava/lang/String;

    .line 941
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    iput-object p4, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->anchorText:Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    iput-object p5, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->imgSrc:Ljava/lang/String;

    .line 943
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    sget-object v1, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/content/browser/ContentViewCore;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 4

    .prologue
    .line 496
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 4

    .prologue
    .line 505
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoForward()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 4

    .prologue
    .line 1031
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1032
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 4

    .prologue
    .line 1036
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1037
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    goto :goto_0
.end method

.method public captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;)V
    .locals 5
    .param p1, "callback"    # Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

    .prologue
    .line 168
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkGetBitmapCallbackInternal:Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

    .line 170
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mGetBitmapCallback:Lorg/chromium/content_public/browser/ContentBitmapCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/content_public/browser/WebContents;->getContentBitmapAsync(Landroid/graphics/Bitmap$Config;FLandroid/graphics/Rect;Lorg/chromium/content_public/browser/ContentBitmapCallback;)V

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 4
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 472
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeClearCache(JZ)V

    goto :goto_0
.end method

.method public clearCacheForSingleFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$5;

    invoke-direct {v1, p0, p1}, Lorg/xwalk/core/internal/XWalkContent$5;-><init>(Lorg/xwalk/core/internal/XWalkContent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 487
    :cond_1
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeClearCacheForSingleFile(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1079
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1081
    :goto_0
    return-void

    .line 1080
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public clearHistory()V
    .locals 4

    .prologue
    .line 491
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->clearHistory()V

    goto :goto_0
.end method

.method public clearMatches()V
    .locals 4

    .prologue
    .line 1109
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1111
    :goto_0
    return-void

    .line 1110
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeClearMatches(J)V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 4

    .prologue
    .line 1074
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->clearSslPreferences()V

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->computeHorizontalScrollOffsetDelegate()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->computeHorizontalScrollRangeDelegate()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->computeVerticalScrollExtentDelegate()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->computeVerticalScrollOffsetDelegate()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->computeVerticalScrollRangeDelegate()I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 753
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 755
    :cond_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->unload(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V

    .line 757
    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkContent;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    .line 759
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->removeView(Landroid/view/View;)V

    .line 760
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->removeView(Landroid/view/View;)V

    .line 761
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 764
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    invoke-virtual {v0}, Lorg/chromium/content/common/CleanupReference;->cleanupNow()V

    .line 765
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->destroy()V

    .line 766
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->destroy()V

    .line 768
    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    .line 769
    iput-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    goto :goto_0
.end method

.method public devToolsAgentId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 615
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    .line 616
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeDevToolsAgentId(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method disableRemoteDebugging()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    if-nez v0, :cond_0

    .line 964
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->isRemoteDebuggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->setRemoteDebuggingEnabled(Z)V

    .line 962
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->destroy()V

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    goto :goto_0
.end method

.method public enableRemoteDebugging()V
    .locals 4

    .prologue
    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_devtools_remote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "socketName":Ljava/lang/String;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    if-nez v1, :cond_0

    .line 950
    new-instance v1, Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkDevToolsServer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    .line 951
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    const/4 v2, 0x1

    sget-object v3, Lorg/xwalk/core/internal/XWalkDevToolsServer$Security;->ALLOW_SOCKET_ACCESS:Lorg/xwalk/core/internal/XWalkDevToolsServer$Security;

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->setRemoteDebuggingEnabled(ZLorg/xwalk/core/internal/XWalkDevToolsServer$Security;)V

    .line 954
    :cond_0
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 6
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
    .line 398
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 410
    :goto_0
    return-void

    .line 399
    :cond_0
    move-object v1, p2

    .line 400
    .local v1, "fCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 401
    .local v0, "coreCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    if-eqz v1, :cond_1

    .line 402
    new-instance v0, Lorg/xwalk/core/internal/XWalkContent$4;

    .end local v0    # "coreCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    invoke-direct {v0, p0, v1}, Lorg/xwalk/core/internal/XWalkContent$4;-><init>(Lorg/xwalk/core/internal/XWalkContent;Landroid/webkit/ValueCallback;)V

    .line 409
    .restart local v0    # "coreCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lorg/chromium/content_public/browser/WebContents;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    goto :goto_0
.end method

.method exitFullscreen()V
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->hasEnteredFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->exitFullscreen()V

    .line 714
    :cond_0
    return-void
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1099
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1101
    :goto_0
    return-void

    .line 1100
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeFindAllAsync(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 4
    .param p1, "forward"    # Z

    .prologue
    .line 1104
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeFindNext(JZ)V

    goto :goto_0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 4

    .prologue
    .line 1084
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1085
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetCertificate(J)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xwalk/core/internal/SslUtil;->getCertificateFromDerBytes([B)Landroid/net/http/SslCertificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompositingSurfaceType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1114
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1115
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    if-eqz v0, :cond_1

    const-string v0, "TextureView"

    goto :goto_0

    :cond_1
    const-string v0, "SurfaceView"

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentHeightCss()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContentViewCoreForTest()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 524
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastHitTestResult()Lorg/xwalk/core/internal/XWalkContent$HitTestData;
    .locals 4

    .prologue
    .line 560
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 562
    :goto_0
    return-object v0

    .line 561
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeUpdateLastHitTestData(J)V

    .line 562
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    goto :goto_0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 4

    .prologue
    .line 671
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 673
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/NavigationController;->getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/chromium/content_public/browser/NavigationHistory;)V

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 550
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-object v2

    .line 551
    :cond_1
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v3}, Lorg/chromium/content_public/browser/NavigationController;->getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v1

    .line 552
    .local v1, "history":Lorg/chromium/content_public/browser/NavigationHistory;
    invoke-virtual {v1}, Lorg/chromium/content_public/browser/NavigationHistory;->getCurrentEntryIndex()I

    move-result v0

    .line 553
    .local v0, "currentIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 554
    invoke-virtual {v1, v0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content_public/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRemoteDebuggingUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 969
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ws://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->getSocketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/devtools/page/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->devToolsAgentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRoutingID()I
    .locals 2

    .prologue
    .line 773
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetRoutingID(J)I

    move-result v0

    return v0
.end method

.method public getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 380
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 383
    :cond_0
    :goto_0
    return-object v0

    .line 381
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "title":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-object v0, v1

    .line 376
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 566
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    .line 567
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetVersion(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getXWalkWebChromeClient()Lorg/xwalk/core/internal/XWalkWebChromeClient;
    .locals 4

    .prologue
    .line 428
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 429
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getXWalkWebChromeClient()Lorg/xwalk/core/internal/XWalkWebChromeClient;

    move-result-object v0

    goto :goto_0
.end method

.method public goBack()V
    .locals 4

    .prologue
    .line 500
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->goBack()V

    goto :goto_0
.end method

.method public goForward()V
    .locals 4

    .prologue
    .line 509
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->goForward()V

    goto :goto_0
.end method

.method hasEnteredFullscreen()Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->hasEnteredFullscreen()Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1089
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1090
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hideAutofillPopup()V
    .locals 4

    .prologue
    .line 1044
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    if-nez v0, :cond_2

    .line 1046
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$7;

    invoke-direct {v1, p0}, Lorg/xwalk/core/internal/XWalkContent$7;-><init>(Lorg/xwalk/core/internal/XWalkContent;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1055
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;->hideAutofillPopup()V

    goto :goto_0
.end method

.method public installWebContentsObserverForTest(Lorg/xwalk/core/internal/XWalkContentsClient;)V
    .locals 4
    .param p1, "contentClient"    # Lorg/xwalk/core/internal/XWalkContentsClient;

    .prologue
    .line 610
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->installWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 624
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 655
    :cond_1
    :goto_0
    return-void

    .line 630
    :cond_2
    move-object v1, p2

    .line 632
    .local v1, "content":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 634
    :cond_3
    :try_start_0
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v4}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/xwalk/core/internal/AndroidProtocolHandler;->getUrlContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 643
    :cond_4
    move-object v0, p1

    .line 644
    .local v0, "baseUrl":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 645
    .local v3, "position":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 646
    const/4 v4, 0x0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 651
    :goto_1
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v4, v5, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetManifest(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 652
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse the manifest file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 635
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v3    # "position":I
    :catch_0
    move-exception v2

    .line 636
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read the manifest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 648
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "baseUrl":Ljava/lang/String;
    .restart local v3    # "position":I
    :cond_5
    sget-object v4, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    const-string v5, "The url of manifest.json is probably not set correctly."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 654
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    .line 313
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "text/html"

    .line 314
    :cond_2
    invoke-static {p1}, Lorg/xwalk/core/internal/XWalkContent;->fixupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/xwalk/core/internal/XWalkContent;->fixupMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lorg/xwalk/core/internal/XWalkContent;->isBase64Encoded(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;->createLoadDataParams(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xwalk/core/internal/XWalkContent;->doLoadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {p2}, Lorg/xwalk/core/internal/XWalkContent;->fixupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 323
    invoke-static {p3}, Lorg/xwalk/core/internal/XWalkContent;->fixupMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 325
    invoke-static {p1}, Lorg/xwalk/core/internal/XWalkContent;->fixupBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-static {p5}, Lorg/xwalk/core/internal/XWalkContent;->fixupHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 333
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const-string v5, "utf-8"

    move-object v1, p3

    move-object v3, p1

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 340
    .local v7, "loadUrlParams":Lorg/chromium/content_public/browser/LoadUrlParams;
    invoke-direct {p0, v7}, Lorg/xwalk/core/internal/XWalkContent;->doLoadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    goto :goto_0

    .line 336
    .end local v7    # "loadUrlParams":Lorg/chromium/content_public/browser/LoadUrlParams;
    :catch_0
    move-exception v6

    .line 337
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load data string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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
    .line 352
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setExtraHeaders(Ljava/util/Map;)V

    .line 355
    :cond_1
    invoke-direct {p0, v0}, Lorg/xwalk/core/internal/XWalkContent;->doLoadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    goto :goto_0
.end method

.method navigateTo(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationController;->goToOffset(I)V

    .line 515
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 777
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentView;->onCreateInputConnectionSuper(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1121
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onFindResultReceived(IIZ)V

    .line 1123
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 932
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onGeolocationPermissionsHidePrompt()V

    .line 933
    return-void
.end method

.method public onGetFullscreenFlagFromManifest(Z)V
    .locals 4
    .param p1, "enterFullscreen"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 733
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 736
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_0

    .line 737
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 738
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 739
    .local v1, "decorView":Landroid/view/View;
    const/16 v2, 0x1706

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 747
    .end local v1    # "decorView":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public onGetUrlAndLaunchScreenFromManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "readyWhen"    # Ljava/lang/String;
    .param p3, "imageBorder"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 725
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    invoke-virtual {v0, p2, p3}, Lorg/xwalk/core/internal/XWalkLaunchScreenManager;->displayLaunchScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->registerPageLoadListener(Lorg/xwalk/core/internal/PageLoadListener;)V

    .line 728
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetUrlFromManifest(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 718
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;)V

    .line 721
    :cond_0
    return-void
.end method

.method public onKeyValueChanged(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    .prologue
    .line 974
    if-nez p1, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    const-string v0, "remote-debugging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 976
    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->enableRemoteDebugging()V

    goto :goto_0

    .line 977
    :cond_2
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->disableRemoteDebugging()V

    goto :goto_0

    .line 978
    :cond_3
    const-string v0, "enable-javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 979
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptEnabled(Z)V

    goto :goto_0

    .line 982
    :cond_4
    const-string v0, "javascript-can-open-window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 983
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    goto :goto_0

    .line 986
    :cond_5
    const-string v0, "allow-universal-access-from-file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 987
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowUniversalAccessFromFileURLs(Z)V

    goto :goto_0

    .line 990
    :cond_6
    const-string v0, "support-multiple-windows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 991
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportMultipleWindows(Z)V

    goto :goto_0

    .line 994
    :cond_7
    const-string v0, "enable-spatial-navigation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportSpatialNavigation(Z)V

    goto/16 :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 467
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 468
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 457
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onHide()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 462
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    double-to-float v1, v4

    div-float v4, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-wide v6, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    double-to-float v1, v6

    div-float v5, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v0

    iget-wide v6, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    double-to-float v1, v6

    div-float v6, v0, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/xwalk/core/internal/XWalkContent;->nativeRequestNewHitTestDataAt(JFFF)V

    .line 789
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 538
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    .line 540
    sput-boolean v4, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    goto :goto_0
.end method

.method public reload(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x1

    .line 359
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 361
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 367
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, v4}, Lorg/chromium/content_public/browser/NavigationController;->reload(Z)V

    .line 369
    :goto_1
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    goto :goto_0

    .line 363
    :pswitch_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, v4}, Lorg/chromium/content_public/browser/NavigationController;->reloadBypassingCache(Z)V

    goto :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 8
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 689
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-object v2

    .line 691
    :cond_1
    const-string v3, "XWALKVIEW_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 692
    .local v1, "state":[B
    if-eqz v1, :cond_0

    .line 694
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v4, v5, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetState(J[B)Z

    move-result v0

    .line 700
    .local v0, "result":Z
    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onUpdateTitle(Ljava/lang/String;)V

    .line 703
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v2

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 544
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    .line 546
    sput-boolean v4, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 679
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-object v1

    .line 681
    :cond_1
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetState(J)[B

    move-result-object v0

    .line 682
    .local v0, "state":[B
    if-eqz v0, :cond_0

    .line 684
    const-string v1, "XWALKVIEW_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 685
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v1

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 801
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentView;->scrollBy(II)V

    .line 802
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 797
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentView;->scrollTo(II)V

    .line 798
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 6
    .param p1, "color"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 576
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    if-nez v0, :cond_1

    .line 578
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$6;

    invoke-direct {v1, p0, p1}, Lorg/xwalk/core/internal/XWalkContent$6;-><init>(Lorg/xwalk/core/internal/XWalkContent;I)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 586
    :cond_1
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkContent;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    invoke-virtual {p0, v4}, Lorg/xwalk/core/internal/XWalkContent;->setOverlayVideoMode(Z)V

    .line 588
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v5}, Lorg/chromium/content/browser/ContentViewCore;->setBackgroundOpaque(Z)V

    .line 593
    :goto_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setBackgroundColor(I)V

    .line 594
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewRenderView;->setSurfaceViewBackgroundColor(I)V

    .line 595
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetBackgroundColor(JI)V

    goto :goto_0

    .line 590
    :cond_2
    invoke-virtual {p0, v5}, Lorg/xwalk/core/internal/XWalkContent;->setOverlayVideoMode(Z)V

    .line 591
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v4}, Lorg/chromium/content/browser/ContentViewCore;->setBackgroundOpaque(Z)V

    goto :goto_1
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V
    .locals 4
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    .prologue
    .line 442
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    goto :goto_0
.end method

.method public setFindListener(Lorg/xwalk/core/internal/XWalkFindListenerInternal;)V
    .locals 4
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkFindListenerInternal;

    .prologue
    .line 1094
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setFindListener(Lorg/xwalk/core/internal/XWalkFindListenerInternal;)V

    goto :goto_0
.end method

.method public setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V
    .locals 4
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .prologue
    .line 447
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    goto :goto_0
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .param p1, "networkUp"    # Z

    .prologue
    .line 599
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 601
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetJsOnlineProperty(JZ)V

    goto :goto_0
.end method

.method public setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V
    .locals 4
    .param p1, "service"    # Lorg/xwalk/core/internal/XWalkNotificationService;

    .prologue
    .line 452
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 793
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 794
    return-void
.end method

.method public setOriginAccessWhitelist(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 658
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    const-string v1, ""

    .line 662
    .local v1, "matchPatterns":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 663
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 664
    .local v0, "arrays":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 667
    .end local v0    # "arrays":Lorg/json/JSONArray;
    :cond_2
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3, p1, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetOriginAccessWhitelist(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOverlayVideoMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1002
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewRenderView;->setOverlayVideoMode(Z)V

    .line 1005
    :cond_0
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    .prologue
    .line 418
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .prologue
    .line 413
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1062
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    .line 1063
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    if-nez v0, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1064
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkClient;

    .prologue
    .line 437
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    goto :goto_0
.end method

.method public setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkWebChromeClient;

    .prologue
    .line 423
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 1008
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    if-nez v0, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewRenderView;->setZOrderOnTop(Z)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 4

    .prologue
    .line 518
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->stop()V

    .line 520
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onStopLoading()V

    goto :goto_0
.end method

.method public supplyContentsForPopup(Lorg/xwalk/core/internal/XWalkContent;)V
    .locals 6
    .param p1, "newContents"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    const-wide/16 v4, 0x0

    .line 260
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkContent;->nativeReleasePopupXWalkContent(J)J

    move-result-wide v0

    .line 263
    .local v0, "popupNativeXWalkContent":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 264
    sget-object v2, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    const-string v3, "Popup XWalkView bind failed: no pending content."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkContent;->destroy()V

    goto :goto_0

    .line 268
    :cond_2
    if-nez p1, :cond_3

    .line 269
    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeDestroy(J)V

    goto :goto_0

    .line 273
    :cond_3
    invoke-direct {p1, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->receivePopupContents(J)V

    goto :goto_0
.end method

.method public zoomBy(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 1023
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 1024
    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1025
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "zoom delta value outside [0.01, 100] range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 4

    .prologue
    .line 1013
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1014
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 4

    .prologue
    .line 1018
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1019
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomOut()Z

    move-result v0

    goto :goto_0
.end method
