.class public final Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final PARAM_BOTTOM_TEXT:Ljava/lang/String; = "PARAM_BOTTOM_TEXT"

.field private static final PARAM_LINK:Ljava/lang/String; = "PARAM_LINK"

.field private static final PARAM_TITLE:Ljava/lang/String; = "PARAM_TITLE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private beepManager:Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;

.field private bottomTextResId:I

.field private cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

.field private handler:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

.field private inactivityTimer:Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;

.field private isHasSurface:Z

.field private link:Ljava/lang/String;

.field private mCaptureBottomText:Landroid/widget/TextView;

.field private mCaptureTitle:Landroid/widget/TextView;

.field private mCropRect:Landroid/graphics/Rect;

.field private scanContainer:Landroid/widget/RelativeLayout;

.field private scanCropView:Landroid/widget/RelativeLayout;

.field private scanLine:Landroid/widget/ImageView;

.field private scanPreview:Landroid/view/SurfaceView;

.field private titleResId:I

.field private topBack:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    .line 79
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->isHasSurface:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->link:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->performExit()V

    return-void
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 1

    .prologue
    .line 315
    const v0, 0x7f0f0062

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->setResult(I)V

    .line 317
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->finish()V

    .line 318
    return-void
.end method

.method private getStatusBarHeight()I
    .locals 6

    .prologue
    .line 367
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 368
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 369
    .local v3, "obj":Ljava/lang/Object;
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 370
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 371
    .local v4, "x":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 375
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "x":I
    :goto_0
    return v5

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No SurfaceHolder provided"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    :goto_0
    return-void

    .line 294
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 297
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->handler:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

    if-nez v2, :cond_2

    .line 298
    new-instance v2, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    const/16 v4, 0x300

    invoke-direct {v2, p0, v3, v4}, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;-><init>(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->handler:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

    .line 301
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->initCrop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 304
    .local v1, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    .line 305
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0
.end method

.method private initCrop()V
    .locals 17

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v14

    iget v2, v14, Landroid/graphics/Point;->y:I

    .line 335
    .local v2, "cameraWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    invoke-virtual {v14}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v14

    iget v1, v14, Landroid/graphics/Point;->x:I

    .line 338
    .local v1, "cameraHeight":I
    const/4 v14, 0x2

    new-array v10, v14, [I

    .line 339
    .local v10, "location":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    invoke-virtual {v14, v10}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 341
    const/4 v14, 0x0

    aget v6, v10, v14

    .line 342
    .local v6, "cropLeft":I
    const/4 v14, 0x1

    aget v14, v10, v14

    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getStatusBarHeight()I

    move-result v15

    sub-int v7, v14, v15

    .line 344
    .local v7, "cropTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    .line 345
    .local v8, "cropWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    .line 348
    .local v5, "cropHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    .line 349
    .local v4, "containerWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    .line 352
    .local v3, "containerHeight":I
    mul-int v14, v6, v2

    div-int v12, v14, v4

    .line 354
    .local v12, "x":I
    mul-int v14, v7, v1

    div-int v13, v14, v3

    .line 357
    .local v13, "y":I
    mul-int v14, v8, v2

    div-int v11, v14, v4

    .line 359
    .local v11, "width":I
    mul-int v14, v5, v1

    div-int v9, v14, v3

    .line 362
    .local v9, "height":I
    new-instance v14, Landroid/graphics/Rect;

    add-int v15, v11, v12

    add-int v16, v9, v13

    move/from16 v0, v16

    invoke-direct {v14, v12, v13, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    .line 363
    return-void
.end method

.method public static makeIntentForISBNScan(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    const-string v2, "PARAM_TITLE"

    const v3, 0x7f0f0065

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v2, "PARAM_BOTTOM_TEXT"

    const v3, 0x7f0f0066

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Type"

    const-string v3, "audio"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Scan View"

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    return-object v0
.end method

.method public static makeIntentForStoryBookUnLock(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    const-string v1, "PARAM_TITLE"

    const v2, 0x7f0f01a4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "PARAM_BOTTOM_TEXT"

    const v2, 0x7f0f00c4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    return-object v0
.end method

.method public static makeIntentForTvLoginScan(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    const-string v2, "PARAM_TITLE"

    const v3, 0x7f0f0067

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v2, "PARAM_BOTTOM_TEXT"

    const v3, 0x7f0f0068

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v2, "PARAM_LINK"

    const-string v3, "jlgl://forum?pid=2904f7d1aa75434d9aa593cbf44fa75a"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Type"

    const-string v3, "TV"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Scan View"

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    return-object v0
.end method

.method private performExit()V
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->finish()V

    .line 177
    const v0, 0x7f010013

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->overridePendingTransition(II)V

    .line 178
    return-void
.end method


# virtual methods
.method public getCameraManager()Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->handler:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 270
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;->onActivity()V

    .line 271
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->beepManager:Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->playBeepSoundAndVibrate()V

    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 276
    .local v0, "extra":Landroid/os/Bundle;
    const-string v2, "result"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 281
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->finish()V

    .line 283
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->performExit()V

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 130
    .local v9, "window":Landroid/view/Window;
    const/16 v3, 0x80

    invoke-virtual {v9, v3}, Landroid/view/Window;->addFlags(I)V

    .line 131
    const v3, 0x7f0b0022

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->setContentView(I)V

    .line 133
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PARAM_TITLE"

    const v5, 0x7f0f0065

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->titleResId:I

    .line 135
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PARAM_BOTTOM_TEXT"

    const v5, 0x7f0f0068

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->bottomTextResId:I

    .line 136
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PARAM_LINK"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->link:Ljava/lang/String;

    .line 139
    :cond_0
    const v3, 0x7f090489

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->mCaptureTitle:Landroid/widget/TextView;

    .line 140
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->mCaptureTitle:Landroid/widget/TextView;

    iget v4, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->titleResId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 141
    const v3, 0x7f0900fd

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->mCaptureBottomText:Landroid/widget/TextView;

    .line 142
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->mCaptureBottomText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->bottomTextResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->link:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->mCaptureBottomText:Landroid/widget/TextView;

    new-instance v4, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$1;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$1;-><init>(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_1
    const v3, 0x7f090104

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    .line 152
    const v3, 0x7f0900fe

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanContainer:Landroid/widget/RelativeLayout;

    .line 153
    const v3, 0x7f0900ff

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    .line 154
    const v3, 0x7f090105

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanLine:Landroid/widget/ImageView;

    .line 155
    const v3, 0x7f090014

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->topBack:Landroid/view/View;

    .line 156
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->topBack:Landroid/view/View;

    new-instance v4, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$2;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$2;-><init>(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    new-instance v3, Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;

    .line 164
    new-instance v3, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->beepManager:Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;

    .line 166
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, 0x3f666666    # 0.9f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 168
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 169
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 170
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 171
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;->shutdown()V

    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->handler:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->handler:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->quitSynchronously()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->handler:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;->onPause()V

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->beepManager:Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->close()V

    .line 227
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->closeDriver()V

    .line 228
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->isHasSurface:Z

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 231
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 232
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    new-instance v0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->handler:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

    .line 205
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->isHasSurface:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/utils/InactivityTimer;->onResume()V

    .line 217
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->handler:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->handler:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;

    const v1, 0x7f090459

    invoke-virtual {v0, v1, p1, p2}, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 324
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 259
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->isHasSurface:Z

    if-nez v0, :cond_1

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->isHasSurface:Z

    .line 247
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 249
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->isHasSurface:Z

    .line 254
    return-void
.end method
