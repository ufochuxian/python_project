.class public Lorg/xwalk/core/internal/XWalkSettingsInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;,
        Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;,
        Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;,
        Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createInternally = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final LOAD_CACHE_ONLY:I = 0x3
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final LOAD_DEFAULT:I = -0x1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final LOAD_NO_CACHE:I = 0x2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field private static final MAXIMUM_FONT_SIZE:I = 0x48

.field private static final MINIMUM_FONT_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XWalkSettings"

.field private static sAppCachePathIsSet:Z

.field private static final sGlobalContentSettingsLock:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguages:Ljava/lang/String;

.field private mAllowContentUrlAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowFileUrlAccess:Z

.field private mAllowScriptsToCloseWindows:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAutoCompleteEnabled:Z

.field private mBlockNetworkLoads:Z

.field private mBuiltInZoomControls:Z

.field private mCacheMode:I

.field private final mContext:Landroid/content/Context;

.field private mDIPScale:D

.field private mDatabaseEnabled:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultVideoPosterURL:Ljava/lang/String;

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private final mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

.field private mGeolocationEnabled:Z

.field private mImagesEnabled:Z

.field private mInitialPageScalePercent:F

.field private mIsUpdateWebkitPrefsMessagePending:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mNativeXWalkSettings:J

.field private final mPasswordEchoEnabled:Z

.field private mQuirksModeEnabled:Z

.field private mShouldFocusFirstNode:Z

.field private mSpatialNavigationEnabled:Z

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mTextSizePercent:I

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private final mXWalkSettingsLock:Ljava/lang/Object;

.field private mZoomChangeListener:Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sGlobalContentSettingsLock:Ljava/lang/Object;

    .line 117
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sAppCachePathIsSet:Z

    return-void

    :cond_0
    move v0, v1

    .line 24
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    .line 85
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    .line 86
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    .line 87
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    .line 88
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    .line 89
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 90
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 91
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    .line 93
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    .line 94
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    .line 95
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    .line 96
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    .line 97
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    .line 98
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadWithOverviewMode:Z

    .line 99
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    .line 105
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    .line 106
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    .line 107
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mShouldFocusFirstNode:Z

    .line 108
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 123
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    .line 129
    const/16 v0, 0x10

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    .line 130
    const/16 v0, 0xd

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    .line 132
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    .line 135
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    .line 136
    const/16 v0, 0x64

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    .line 138
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    .line 139
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    .line 140
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDisplayZoomControls:Z

    .line 142
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSpatialNavigationEnabled:Z

    .line 143
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mQuirksModeEnabled:Z

    .line 145
    sget-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->NARROW_COLUMNS:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .line 223
    iput-object v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    .line 224
    iput-object v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    .line 225
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mPasswordEchoEnabled:Z

    .line 226
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webContents"    # Lorg/chromium/content_public/browser/WebContents;
    .param p3, "isAccessFromFileURLsGrantedByDefault"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    .line 85
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    .line 86
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    .line 87
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    .line 88
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    .line 89
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 90
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 91
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    .line 93
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    .line 94
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    .line 95
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    .line 96
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    .line 97
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    .line 98
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadWithOverviewMode:Z

    .line 99
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    .line 105
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    .line 106
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    .line 107
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mShouldFocusFirstNode:Z

    .line 108
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    .line 120
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 123
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    .line 129
    const/16 v0, 0x10

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    .line 130
    const/16 v0, 0xd

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    .line 132
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    .line 135
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    .line 136
    const/16 v0, 0x64

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    .line 138
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    .line 139
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    .line 140
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDisplayZoomControls:Z

    .line 142
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSpatialNavigationEnabled:Z

    .line 143
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mQuirksModeEnabled:Z

    .line 145
    sget-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->NARROW_COLUMNS:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .line 230
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 231
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    .line 232
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBlockNetworkLoads:Z

    .line 237
    if-eqz p3, :cond_0

    .line 238
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 239
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 242
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "show_password"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mPasswordEchoEnabled:Z

    .line 248
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    .line 250
    invoke-virtual {p0, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    .line 251
    return-void

    :cond_1
    move v0, v2

    .line 232
    goto :goto_0

    :cond_2
    move v1, v2

    .line 245
    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeGetDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateInitialPageScale(J)V

    return-void
.end method

.method static synthetic access$1100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mZoomChangeListener:Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeResetScrollAndScaleState(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->updateWebkitPreferencesOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    return v0
.end method

.method static synthetic access$302(Lorg/xwalk/core/internal/XWalkSettingsInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    return p1
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/XWalkSettingsInternal;)J
    .locals 2
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateUserAgent(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateAcceptLanguages(J)V

    return-void
.end method

.method static synthetic access$900(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateFormDataPreferences(J)V

    return-void
.end method

.method private clipFontSize(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 1126
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1131
    .end local p1    # "size":I
    :cond_0
    :goto_0
    return p1

    .line 1128
    .restart local p1    # "size":I
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1129
    goto :goto_0
.end method

.method private getAcceptLanguagesLocked()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    return-object v0
.end method

.method private getAppCacheEnabled()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 786
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    return v0
.end method

.method private getDIPScaleLocked()D
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1089
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1090
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    return-wide v0
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInitialPageScalePercentLocked()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1083
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1084
    :cond_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    return v0
.end method

.method private getPasswordEchoEnabledLocked()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1095
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1096
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mPasswordEchoEnabled:Z

    return v0
.end method

.method private getSaveFormDataLocked()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1049
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    return v0
.end method

.method private getTextAutosizingEnabledLocked()Z
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1377
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1378
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    sget-object v1, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->TEXT_AUTOSIZING:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUserAgentLocked()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 948
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeGetDefaultUserAgent()Ljava/lang/String;
.end method

.method private native nativeInit(Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method private native nativeResetScrollAndScaleState(J)V
.end method

.method private native nativeUpdateAcceptLanguages(J)V
.end method

.method private native nativeUpdateEverythingLocked(J)V
.end method

.method private native nativeUpdateFormDataPreferences(J)V
.end method

.method private native nativeUpdateInitialPageScale(J)V
.end method

.method private native nativeUpdateUserAgent(J)V
.end method

.method private native nativeUpdateWebkitPreferences(J)V
.end method

.method private nativeXWalkSettingsGone(J)V
    .locals 5
    .param p1, "nativeXWalkSettings"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 269
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 270
    :cond_1
    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 271
    return-void
.end method

.method private onGestureZoomSupportChanged(ZZ)V
    .locals 2
    .param p1, "supportsDoubleTapZoom"    # Z
    .param p2, "supportsMultiTouchZoom"    # Z

    .prologue
    .line 1199
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v1, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;ZZ)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybePostOnUiThread(Ljava/lang/Runnable;)V

    .line 1209
    return-void
.end method

.method private supportsDoubleTapZoomLocked()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1213
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1214
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportsMultiTouchZoomLocked()Z
    .locals 1

    .prologue
    .line 1218
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1219
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEverything()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 962
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 963
    :try_start_0
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateEverythingLocked(J)V

    .line 964
    monitor-exit v1

    .line 965
    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWebkitPreferencesOnUiThread()V
    .locals 4

    .prologue
    .line 968
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 969
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 970
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateWebkitPreferences(J)V

    .line 972
    :cond_0
    return-void
.end method


# virtual methods
.method public getAcceptLanguages()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1002
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1003
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1004
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 428
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    monitor-exit v1

    return v0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccess()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 397
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    monitor-exit v1

    return v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 639
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    monitor-exit v1

    return v0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowScriptsToCloseWindows()Z
    .locals 2

    .prologue
    .line 282
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    monitor-exit v1

    return v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 623
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 624
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    monitor-exit v1

    return v0

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBlockNetworkImage()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 592
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBlockNetworkLoads()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBlockNetworkLoads:Z

    monitor-exit v1

    return v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1278
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1279
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    monitor-exit v1

    return v0

    .line 1280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheMode()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 318
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    monitor-exit v1

    return v0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDatabaseEnabled()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 850
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 851
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    monitor-exit v1

    return v0

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1185
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1186
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    monitor-exit v1

    return v0

    .line 1187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultFontSize()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1157
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1158
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    monitor-exit v1

    return v0

    .line 1159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultVideoPosterURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 955
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 957
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDomStorageEnabled()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 815
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 816
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    monitor-exit v1

    return v0

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getGeolocationEnabled()Z
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    monitor-exit v1

    return v0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 672
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 673
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    monitor-exit v1

    return v0

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 606
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    monitor-exit v1

    return v0

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLayoutAlgorithm()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1370
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1371
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    monitor-exit v1

    return-object v0

    .line 1372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1413
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1414
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadWithOverviewMode:Z

    monitor-exit v1

    return v0

    .line 1415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 552
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    monitor-exit v1

    return v0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 881
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    monitor-exit v1

    return v0

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1037
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1038
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSaveFormDataLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1039
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSupportQuirksMode()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1343
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1344
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mQuirksModeEnabled:Z

    monitor-exit v1

    return v0

    .line 1345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSupportSpatialNavigation()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1317
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1318
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSpatialNavigationEnabled:Z

    monitor-exit v1

    return v0

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTextZoom()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1120
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1121
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    monitor-exit v1

    return v0

    .line 1122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUseWideViewPort()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 738
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    monitor-exit v1

    return v0

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 941
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 942
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 3
    .param p1, "acceptLanguages"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 981
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 982
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 993
    :goto_0
    return-void

    .line 983
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    .line 984
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$2;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$2;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 992
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 412
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 414
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    .line 416
    :cond_0
    monitor-exit v1

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 381
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 383
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    .line 385
    :cond_0
    monitor-exit v1

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 512
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 514
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 515
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 517
    :cond_0
    monitor-exit v1

    .line 518
    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowScriptsToCloseWindows(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 274
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    if-eq v0, p1, :cond_0

    .line 276
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    .line 278
    :cond_0
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 487
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 489
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 490
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 492
    :cond_0
    monitor-exit v1

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCacheEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 747
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 748
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 749
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    .line 750
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 752
    :cond_0
    monitor-exit v1

    .line 753
    return-void

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 759
    const/4 v0, 0x0

    .line 760
    .local v0, "needToSync":Z
    sget-object v2, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sGlobalContentSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 762
    :try_start_0
    sget-boolean v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sAppCachePathIsSet:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    const/4 v1, 0x1

    sput-boolean v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sAppCachePathIsSet:Z

    .line 764
    const/4 v0, 0x1

    .line 766
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    if-eqz v0, :cond_1

    .line 771
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 772
    :try_start_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 773
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 775
    :cond_1
    return-void

    .line 766
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 773
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setBlockNetworkImage(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 575
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    if-ne v0, p1, :cond_0

    .line 577
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    .line 578
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 580
    :cond_0
    monitor-exit v1

    .line 581
    return-void

    .line 577
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 5
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 344
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 352
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBlockNetworkLoads:Z

    .line 353
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1263
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1264
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1269
    :goto_0
    return-void

    .line 1265
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    .line 1266
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsDoubleTapZoomLocked()Z

    move-result v0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomLocked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->onGestureZoomSupportChanged(ZZ)V

    .line 1268
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCacheMode(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 302
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    if-eq v0, p1, :cond_0

    .line 304
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    .line 306
    :cond_0
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDIPScale(D)V
    .locals 3
    .param p1, "dipScale"    # D

    .prologue
    .line 1053
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1054
    :try_start_0
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    .line 1057
    monitor-exit v1

    .line 1058
    return-void

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDatabaseEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 834
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 835
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 836
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    .line 837
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 839
    :cond_0
    monitor-exit v1

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1170
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1171
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->clipFontSize(I)I

    move-result p1

    .line 1172
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1176
    :goto_0
    return-void

    .line 1173
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    .line 1174
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1175
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultFontSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1142
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1143
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->clipFontSize(I)I

    move-result p1

    .line 1144
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1148
    :goto_0
    return-void

    .line 1145
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    .line 1146
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1147
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultVideoPosterURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 890
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 891
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 893
    :cond_1
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    .line 894
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 896
    :cond_2
    monitor-exit v1

    .line 897
    return-void

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 798
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 799
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 800
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    .line 801
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 803
    :cond_0
    monitor-exit v1

    .line 804
    return-void

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGeolocationEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 437
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 439
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    .line 441
    :cond_0
    monitor-exit v1

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInitialPageScale(F)V
    .locals 3
    .param p1, "scaleInPercent"    # F
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1067
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1068
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    monitor-exit v1

    .line 1079
    :goto_0
    return-void

    .line 1069
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    .line 1070
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$4;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$4;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 1078
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 653
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 655
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 656
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 658
    :cond_0
    monitor-exit v1

    .line 659
    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 463
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 464
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 465
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    .line 466
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 468
    :cond_0
    monitor-exit v1

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLayoutAlgorithm(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V
    .locals 2
    .param p1, "la"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1356
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1357
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1361
    :goto_0
    return-void

    .line 1358
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .line 1359
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1360
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 3
    .param p1, "overview"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1391
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1392
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadWithOverviewMode:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1404
    :goto_0
    return-void

    .line 1393
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadWithOverviewMode:Z

    .line 1394
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$6;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$6;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 1403
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 534
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 536
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    .line 537
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 539
    :cond_0
    monitor-exit v1

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 2
    .param p1, "require"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 864
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 865
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    .line 866
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    .line 867
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 869
    :cond_0
    monitor-exit v1

    .line 870
    return-void

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1015
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1027
    :goto_0
    return-void

    .line 1017
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    .line 1018
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$3;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$3;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 1026
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 2
    .param p1, "support"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 687
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 688
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 689
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    .line 690
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 692
    :cond_0
    monitor-exit v1

    .line 693
    return-void

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportQuirksMode(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1329
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1330
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mQuirksModeEnabled:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1334
    :goto_0
    return-void

    .line 1331
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mQuirksModeEnabled:Z

    .line 1332
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1333
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportSpatialNavigation(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1303
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1304
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSpatialNavigationEnabled:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1308
    :goto_0
    return-void

    .line 1305
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSpatialNavigationEnabled:Z

    .line 1306
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1307
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 3
    .param p1, "support"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1232
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1233
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1238
    :goto_0
    return-void

    .line 1234
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    .line 1235
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsDoubleTapZoomLocked()Z

    move-result v0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomLocked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->onGestureZoomSupportChanged(ZZ)V

    .line 1237
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextZoom(I)V
    .locals 2
    .param p1, "textZoom"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1106
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1107
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1111
    :goto_0
    return-void

    .line 1108
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    .line 1109
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1110
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUseWideViewPort(Z)V
    .locals 2
    .param p1, "use"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 722
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 724
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    .line 725
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 727
    :cond_0
    monitor-exit v1

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 914
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 915
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    .line 916
    .local v0, "oldUserAgent":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 917
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    .line 921
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 922
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v3, Lorg/xwalk/core/internal/XWalkSettingsInternal$1;

    invoke-direct {v3, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$1;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v1, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 931
    :cond_1
    monitor-exit v2

    .line 932
    return-void

    .line 919
    :cond_2
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 931
    .end local v0    # "oldUserAgent":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 6
    .param p1, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    const-wide/16 v4, 0x0

    .line 254
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 256
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeDestroy(J)V

    .line 257
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 259
    :cond_0
    if-eqz p1, :cond_1

    .line 260
    :try_start_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->bindUiThread()V

    .line 261
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeInit(Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 262
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateEverythingLocked(J)V

    .line 264
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    return-void
.end method

.method setZoomListener(Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;)V
    .locals 2
    .param p1, "zoomChangeListener"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    .prologue
    .line 1191
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1192
    :try_start_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mZoomChangeListener:Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    .line 1193
    monitor-exit v1

    .line 1194
    return-void

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportMultipleWindows()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 704
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    monitor-exit v1

    return v0

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportZoom()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1247
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1248
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    monitor-exit v1

    return v0

    .line 1249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportsMultiTouchZoomForTest()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1290
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1291
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
