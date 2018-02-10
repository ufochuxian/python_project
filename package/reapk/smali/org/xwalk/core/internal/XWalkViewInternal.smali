.class public Lorg/xwalk/core/internal/XWalkViewInternal;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
    extendClass = Landroid/widget/FrameLayout;
.end annotation


# static fields
.field static final PLAYSTORE_DETAIL_URI:Ljava/lang/String; = "market://details?id="

.field public static final RELOAD_IGNORE_CACHE:I = 0x1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final RELOAD_NORMAL:I = 0x0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final SURFACE_VIEW:Ljava/lang/String; = "SurfaceView"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TEXTURE_VIEW:Ljava/lang/String; = "TextureView"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field


# instance fields
.field private mContent:Lorg/xwalk/core/internal/XWalkContent;

.field private mContext:Landroid/content/Context;

.field private mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

.field private mIsHidden:Z

.field private final mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    const-class v0, Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postWrapperLines = {
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));",
            "        removeViewAt(0);",
            "        new org.xwalk.core.extension.XWalkExternalExtensionManagerImpl(this);"
        }
        preWrapperLines = {
            "        super(${param1}, null);",
            "        SurfaceView surfaceView = new SurfaceView(${param1});",
            "        surfaceView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));",
            "        addView(surfaceView);"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-direct {p0, p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 281
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 282
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 284
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    invoke-direct {v0}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    .line 285
    invoke-virtual {p0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->initXWalkContent(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postWrapperLines = {
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));",
            "        removeViewAt(0);",
            "        new org.xwalk.core.extension.XWalkExternalExtensionManagerImpl(this);"
        }
        preWrapperLines = {
            "        super(${param1}, null);",
            "        SurfaceView surfaceView = new SurfaceView(${param1});",
            "        surfaceView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));",
            "        addView(surfaceView);"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-direct {p0, p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 350
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 351
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 353
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    invoke-direct {v0}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    .line 354
    invoke-virtual {p0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->initXWalkContent(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postBridgeLines = {
            "        String animatable = null;",
            "        try {",
            "            animatable = (String) new ReflectField(wrapper, \"mAnimatable\").get();",
            "        } catch (RuntimeException e) {",
            "        }",
            "        initXWalkContent(animatable);"
        }
        postWrapperLines = {
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));",
            "        removeViewAt(0);",
            "        new org.xwalk.core.extension.XWalkExternalExtensionManagerImpl(this);"
        }
        preWrapperLines = {
            "        super(${param1}, ${param2});",
            "        if (isInEditMode()) return;",
            "        if (${param2} != null)",
            "            mAnimatable = ${param2}.getAttributeValue(",
            "                    XWALK_ATTRS_NAMESPACE, ANIMATABLE);",
            "        SurfaceView surfaceView = new SurfaceView(${param1});",
            "        surfaceView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));",
            "        addView(surfaceView);"
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 321
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 322
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 324
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    invoke-direct {v0}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    .line 325
    return-void
.end method

.method private static checkThreadSafety()V
    .locals 3

    .prologue
    .line 1281
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1282
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A XWalkViewInternal method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All XWalkViewInternal methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1288
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 728
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method canGoBack()Z
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1241
    :goto_0
    return v0

    .line 1240
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1241
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method canGoForward()Z
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1253
    :goto_0
    return v0

    .line 1252
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1253
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canGoForward()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1189
    :goto_0
    return v0

    .line 1188
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1189
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canZoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1201
    :goto_0
    return v0

    .line 1200
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1201
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canZoomOut()Z

    move-result v0

    goto :goto_0
.end method

.method public captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;)V
    .locals 1
    .param p1, "callback"    # Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1086
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1087
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1088
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;)V

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 768
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->clearCache(Z)V

    goto :goto_0
.end method

.method public clearCacheForSingleFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 781
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->clearCacheForSingleFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1677
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1680
    :goto_0
    return-void

    .line 1678
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1679
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1332
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1335
    :goto_0
    return-void

    .line 1333
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1334
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->hideAutofillPopup()V

    goto :goto_0
.end method

.method clearHistory()V
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1266
    :goto_0
    return-void

    .line 1264
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1265
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->clearHistory()V

    goto :goto_0
.end method

.method public clearMatches()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1747
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1750
    :goto_0
    return-void

    .line 1748
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1749
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->clearMatches()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1663
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1666
    :goto_0
    return-void

    .line 1664
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1665
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->clearSslPreferences()V

    goto :goto_0
.end method

.method public completeWindowCreation(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 2
    .param p1, "newXWalkView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 366
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/xwalk/core/internal/XWalkContent;->supplyContentsForPopup(Lorg/xwalk/core/internal/XWalkContent;)V

    .line 367
    return-void

    .line 366
    :cond_0
    iget-object v0, p1, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1599
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1588
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1631
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1620
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1609
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 1270
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->destroy()V

    .line 1271
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->disableRemoteDebugging()V

    goto :goto_0
.end method

.method disableRemoteDebugging()V
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1278
    :goto_0
    return-void

    .line 1276
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1277
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->disableRemoteDebugging()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1431
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1436
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->hasEnteredFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1437
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->leaveFullscreen()V

    .line 1444
    :goto_0
    return v0

    .line 1439
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1440
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->goBack()V

    goto :goto_0

    .line 1444
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableRemoteDebugging()V
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1122
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1123
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->enableRemoteDebugging()V

    goto :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
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

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 753
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 755
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1718
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1721
    :goto_0
    return-void

    .line 1719
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1720
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 1
    .param p1, "forward"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1735
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1738
    :goto_0
    return-void

    .line 1736
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1737
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->findNext(Z)V

    goto :goto_0
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1690
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1692
    :goto_0
    return-object v0

    .line 1691
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1692
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompositingSurfaceType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1759
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1760
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1761
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getCompositingSurfaceType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentID()I
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1235
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getRoutingID()I

    move-result v0

    goto :goto_0
.end method

.method public getExtensionManager()Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1641
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1643
    :goto_0
    return-object v0

    .line 1642
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1643
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    goto :goto_0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1306
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1308
    :goto_0
    return-object v0

    .line 1307
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1308
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getHitTestResult()Lorg/xwalk/core/internal/XWalkHitTestResultInternal;
    .locals 3
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 658
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 663
    :goto_0
    return-object v1

    .line 659
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 660
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkContent;->getLastHitTestResult()Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    move-result-object v0

    .line 661
    .local v0, "data":Lorg/xwalk/core/internal/XWalkContent$HitTestData;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    iget v2, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->hitTestResultType:I

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->setType(I)V

    .line 662
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    iget-object v2, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->hitTestResultExtraData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->setExtra(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    goto :goto_0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 713
    :goto_0
    return-object v0

    .line 712
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 713
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 698
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 700
    :goto_0
    return-object v0

    .line 699
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 700
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteDebuggingUrl()Landroid/net/Uri;
    .locals 3
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1134
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v2, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-object v1

    .line 1135
    :cond_1
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1136
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkContent;->getRemoteDebuggingUrl()Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "wsUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1139
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1098
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1100
    :goto_0
    return-object v0

    .line 1099
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1100
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 688
    :goto_0
    return-object v0

    .line 687
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 688
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 646
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 648
    :goto_0
    return-object v0

    .line 647
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 648
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1060
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    .line 1061
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1063
    :goto_0
    return-object v1

    .line 1062
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1063
    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getXWalkContentForTest()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getContentViewCoreForTest()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    return-object v0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 976
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 977
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getXWalkVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method goBack()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1248
    :goto_0
    return-void

    .line 1246
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1247
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->goBack()V

    goto :goto_0
.end method

.method goForward()V
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1260
    :goto_0
    return-void

    .line 1258
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1259
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->goForward()V

    goto :goto_0
.end method

.method public hasEnteredFullscreen()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 791
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 793
    :goto_0
    return v0

    .line 792
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 793
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->hasEnteredFullscreen()Z

    move-result v0

    goto :goto_0
.end method

.method protected initXWalkContent(Ljava/lang/String;)V
    .locals 5
    .param p1, "animatable"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 370
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/xwalk/core/internal/XWalkViewDelegate;->init(Landroid/content/Context;Landroid/content/Context;)V

    .line 372
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lorg/chromium/base/ApplicationStatusManager;->informActivityStarted(Landroid/app/Activity;)V

    .line 376
    :cond_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "disable-xwalk-extensions"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 377
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/xwalk/core/internal/extension/BuiltinXWalkExtensions;->load(Landroid/content/Context;)V

    .line 382
    :goto_0
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    .line 383
    new-instance v2, Lorg/xwalk/core/internal/XWalkContent;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p0}, Lorg/xwalk/core/internal/XWalkContent;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    .line 389
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkContent;->resumeTimers()V

    .line 391
    new-instance v2, Lorg/xwalk/core/internal/XWalkClient;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkClient;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    .line 394
    new-instance v2, Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-direct {v2}, Lorg/xwalk/core/internal/XWalkWebChromeClient;-><init>()V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    .line 398
    new-instance v2, Lorg/xwalk/core/internal/XWalkUIClientInternal;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkUIClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    .line 399
    new-instance v2, Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    .line 401
    new-instance v2, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    .line 402
    new-instance v2, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    .line 403
    new-instance v2, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;-><init>(Landroid/content/Context;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    .line 405
    invoke-static {}, Lorg/xwalk/core/internal/XWalkPathHelper;->initialize()V

    .line 406
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xwalk/core/internal/XWalkPathHelper;->setCacheDirectory(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 413
    .local v0, "extCacheDir":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xwalk/core/internal/XWalkPathHelper;->setExternalCacheDirectory(Ljava/lang/String;)V

    .line 417
    .end local v0    # "extCacheDir":Ljava/io/File;
    :cond_2
    return-void

    .line 379
    .end local v1    # "state":Ljava/lang/String;
    :cond_3
    const-string v2, "enable-extensions"

    invoke-static {v2, v4}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->setValue(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public leaveFullscreen()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 806
    :goto_0
    return-void

    .line 804
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 805
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->exitFullscreen()V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->load(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 442
    return-void
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 458
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 461
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->reload(I)V

    goto :goto_0

    .line 475
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 476
    :cond_5
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p3}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 478
    :cond_6
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    const-string v3, "text/html"

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkContent;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 612
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 517
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContent;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 555
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkContent;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 571
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 591
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 593
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method navigateTo(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1291
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1292
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->navigateTo(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 909
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1213
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 880
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->destroy()V

    .line 881
    return-void
.end method

.method public onFocusChangedDelegate(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        delegate = true
        preWrapperLines = {
            "onFocusChanged(gainFocus, direction, previouslyFocusedRect);"
        }
    .end annotation

    .prologue
    .line 1484
    return-void
.end method

.method public onHide()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->onPause()V

    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 923
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 929
    :goto_0
    return v0

    .line 925
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onNewIntent(Landroid/content/Intent;)V

    .line 929
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOverScrolledDelegate(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        delegate = true
        preWrapperLines = {
            "onOverScrolled(scrollX, scrollY, clampedX, clampedY);"
        }
    .end annotation

    .prologue
    .line 1489
    return-void
.end method

.method public onScrollChangedDelegate(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        delegate = true
        preWrapperLines = {
            "onScrollChanged(l, t, oldl, oldt);"
        }
    .end annotation

    .prologue
    .line 1479
    return-void
.end method

.method public onShow()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 867
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    if-nez v0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->onResume()V

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1472
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEventDelegate(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        delegate = true
        preWrapperLines = {
            "return onTouchEvent(event);"
        }
    .end annotation

    .prologue
    .line 1464
    const/4 v0, 0x0

    return v0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 16
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1532
    invoke-super/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v10

    .line 1533
    .local v10, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_7

    const/4 v2, 0x1

    .line 1535
    .local v2, "canScrollHorizontal":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_8

    const/4 v3, 0x1

    .line 1537
    .local v3, "canScrollVertical":Z
    :goto_1
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-ne v10, v14, :cond_9

    if-eqz v2, :cond_9

    :cond_0
    const/4 v9, 0x1

    .line 1539
    .local v9, "overScrollHorizontal":Z
    :goto_2
    if-eqz v10, :cond_1

    const/4 v14, 0x1

    if-ne v10, v14, :cond_a

    if-eqz v3, :cond_a

    :cond_1
    const/4 v11, 0x1

    .line 1542
    .local v11, "overScrollVertical":Z
    :goto_3
    add-int v7, p3, p1

    .line 1543
    .local v7, "newScrollX":I
    if-nez v9, :cond_2

    .line 1544
    const/16 p7, 0x0

    .line 1547
    :cond_2
    add-int v8, p4, p2

    .line 1548
    .local v8, "newScrollY":I
    if-nez v11, :cond_3

    .line 1549
    const/16 p8, 0x0

    .line 1553
    :cond_3
    move/from16 v0, p7

    neg-int v6, v0

    .line 1554
    .local v6, "left":I
    add-int v12, p7, p5

    .line 1555
    .local v12, "right":I
    move/from16 v0, p8

    neg-int v13, v0

    .line 1556
    .local v13, "top":I
    add-int v1, p8, p6

    .line 1558
    .local v1, "bottom":I
    const/4 v4, 0x0

    .line 1559
    .local v4, "clampedX":Z
    if-le v7, v12, :cond_b

    .line 1560
    move v7, v12

    .line 1561
    const/4 v4, 0x1

    .line 1567
    :cond_4
    :goto_4
    const/4 v5, 0x0

    .line 1568
    .local v5, "clampedY":Z
    if-le v8, v1, :cond_c

    .line 1569
    move v8, v1

    .line 1570
    const/4 v5, 0x1

    .line 1576
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lorg/xwalk/core/internal/XWalkViewInternal;->scrollTo(II)V

    .line 1578
    if-nez v4, :cond_6

    if-eqz v5, :cond_d

    :cond_6
    const/4 v14, 0x1

    :goto_6
    return v14

    .line 1533
    .end local v1    # "bottom":I
    .end local v2    # "canScrollHorizontal":Z
    .end local v3    # "canScrollVertical":Z
    .end local v4    # "clampedX":Z
    .end local v5    # "clampedY":Z
    .end local v6    # "left":I
    .end local v7    # "newScrollX":I
    .end local v8    # "newScrollY":I
    .end local v9    # "overScrollHorizontal":Z
    .end local v11    # "overScrollVertical":Z
    .end local v12    # "right":I
    .end local v13    # "top":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 1535
    .restart local v2    # "canScrollHorizontal":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 1537
    .restart local v3    # "canScrollVertical":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 1539
    .restart local v9    # "overScrollHorizontal":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 1562
    .restart local v1    # "bottom":I
    .restart local v4    # "clampedX":Z
    .restart local v6    # "left":I
    .restart local v7    # "newScrollX":I
    .restart local v8    # "newScrollY":I
    .restart local v11    # "overScrollVertical":Z
    .restart local v12    # "right":I
    .restart local v13    # "top":I
    :cond_b
    if-ge v7, v6, :cond_4

    .line 1563
    move v7, v6

    .line 1564
    const/4 v4, 0x1

    goto :goto_4

    .line 1571
    .restart local v5    # "clampedY":Z
    :cond_c
    if-ge v8, v13, :cond_5

    .line 1572
    move v8, v13

    .line 1573
    const/4 v5, 0x1

    goto :goto_5

    .line 1578
    :cond_d
    const/4 v14, 0x0

    goto :goto_6
.end method

.method public pauseTimers()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 822
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->pauseTimers()V

    goto :goto_0
.end method

.method public performLongClickDelegate()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        delegate = true
        preWrapperLines = {
            "return performLongClick();"
        }
    .end annotation

    .prologue
    .line 1458
    const/4 v0, 0x0

    return v0
.end method

.method public reload(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 624
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->reload(I)V

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 741
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 742
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 954
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v1, :cond_1

    .line 956
    :cond_0
    :goto_0
    return v0

    .line 955
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->restoreState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 837
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 840
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 839
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->resumeTimers()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 943
    :goto_0
    return v0

    .line 942
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->saveState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    .line 943
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1508
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->scrollBy(II)V

    .line 1509
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1502
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->scrollTo(II)V

    .line 1503
    return-void
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 1
    .param p1, "acceptLanguages"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1073
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    .line 1074
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    if-nez v0, :cond_0

    .line 1077
    :goto_0
    return-void

    .line 1075
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1076
    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAcceptLanguages(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1014
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 1403
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1404
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1405
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    goto :goto_0
.end method

.method public setExternalExtensionManager(Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;)V
    .locals 1
    .param p1, "manager"    # Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    .prologue
    .line 1651
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1654
    :goto_0
    return-void

    .line 1652
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1653
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    goto :goto_0
.end method

.method public setFindListener(Lorg/xwalk/core/internal/XWalkFindListenerInternal;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkFindListenerInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 1703
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1706
    :goto_0
    return-void

    .line 1704
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1705
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setFindListener(Lorg/xwalk/core/internal/XWalkFindListenerInternal;)V

    goto :goto_0
.end method

.method public setInitialScale(I)V
    .locals 2
    .param p1, "scaleInPercent"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1223
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1224
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    .line 1225
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    if-nez v0, :cond_0

    .line 1227
    :goto_0
    return-void

    .line 1226
    :cond_0
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setInitialPageScale(F)V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        disableReflectMethod = true
        preWrapperLines = {
            "        return;"
        }
    .end annotation

    .prologue
    .line 1038
    return-void
.end method

.method public setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .prologue
    .line 1412
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1415
    :goto_0
    return-void

    .line 1413
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1414
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    goto :goto_0
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1111
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1112
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1113
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNetworkAvailable(Z)V

    goto :goto_0
.end method

.method public setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V
    .locals 1
    .param p1, "service"    # Lorg/xwalk/core/internal/XWalkNotificationService;

    .prologue
    .line 1421
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1424
    :goto_0
    return-void

    .line 1422
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1423
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1496
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1497
    return-void
.end method

.method public setOriginAccessWhitelist(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "patterns"    # [Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1025
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 1026
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1027
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->setOriginAccessWhitelist(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method setOverlayVideoMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1296
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setOverlayVideoMode(Z)V

    .line 1297
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1004
    :goto_0
    return-void

    .line 1002
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1003
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    goto :goto_0
.end method

.method public setSurfaceViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 1358
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1361
    :goto_0
    return-void

    .line 1359
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1360
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 988
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 991
    :goto_0
    return-void

    .line 989
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 990
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1047
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    .line 1048
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    if-nez v0, :cond_0

    .line 1051
    :goto_0
    return-void

    .line 1049
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1050
    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        disableReflectMethod = true
        preWrapperLines = {
            "        if (visibility == View.INVISIBLE) visibility = View.GONE;",
            "        super.setVisibility(visibility);",
            "        setXWalkViewInternalVisibility(visibility);",
            "        setSurfaceViewVisibility(visibility);"
        }
    .end annotation

    .prologue
    .line 1349
    return-void
.end method

.method public setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkClient;

    .prologue
    .line 1380
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1381
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1382
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    goto :goto_0
.end method

.method public setXWalkViewInternalVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 1370
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1373
    :goto_0
    return-void

    .line 1371
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1372
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkWebChromeClient;

    .prologue
    .line 1389
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1392
    :goto_0
    return-void

    .line 1390
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1391
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 1
    .param p1, "onTop"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1319
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1321
    :goto_0
    return-void

    .line 1320
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setZOrderOnTop(Z)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 892
    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string v1, "This method is no longer supported"

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopLoading()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 636
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 635
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->stopLoading()V

    goto :goto_0
.end method

.method public zoomBy(F)V
    .locals 1
    .param p1, "factor"    # F
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1175
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1178
    :goto_0
    return-void

    .line 1176
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1177
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->zoomBy(F)V

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1149
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1151
    :goto_0
    return v0

    .line 1150
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1151
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->zoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1161
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1163
    :goto_0
    return v0

    .line 1162
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1163
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->zoomOut()Z

    move-result v0

    goto :goto_0
.end method
