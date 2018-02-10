.class public Lorg/chromium/media/VideoCaptureCamera2;
.super Lorg/chromium/media/VideoCapture;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureCamera2$1;,
        Lorg/chromium/media/VideoCaptureCamera2$CameraState;,
        Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCapture"

.field private static final kNanoSecondsToFps:D = 1.0E-9


# instance fields
.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

.field private final mCameraStateLock:Ljava/lang/Object;

.field private mCapturedData:[B

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    .line 452
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/VideoCapture;-><init>(Landroid/content/Context;IJ)V

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    .line 233
    sget-object v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    .line 453
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/media/VideoCaptureCamera2;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/media/VideoCaptureCamera2;->createPreviewObjects()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/media/VideoCaptureCamera2;)[B
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/Image;[B)V
    .locals 0
    .param p0, "x0"    # Landroid/media/Image;
    .param p1, "x1"    # [B

    .prologue
    .line 42
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->readImageIntoBuffer(Landroid/media/Image;[B)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/media/VideoCaptureCamera2;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # J

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/VideoCaptureCamera2;->notifyTakePhotoError(J)V

    return-void
.end method

.method private changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V
    .locals 2
    .param p1, "state"    # Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    .prologue
    .line 351
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_0
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    .line 353
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 354
    monitor-exit v1

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createPreviewObjects()Z
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 254
    const-string v10, "VideoCapture"

    const-string v11, "createPreviewObjects"

    invoke-static {v10, v11}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v10, :cond_0

    .line 306
    :goto_0
    return v8

    .line 259
    :cond_0
    iget-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v10}, Lorg/chromium/media/VideoCaptureFormat;->getWidth()I

    move-result v10

    iget-object v11, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v11}, Lorg/chromium/media/VideoCaptureFormat;->getHeight()I

    move-result v11

    iget-object v12, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v12}, Lorg/chromium/media/VideoCaptureFormat;->getPixelFormat()I

    move-result v12

    const/4 v13, 0x2

    invoke-static {v10, v11, v12, v13}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    .line 261
    .local v3, "imageReader":Landroid/media/ImageReader;
    new-instance v7, Landroid/os/HandlerThread;

    const-string v10, "CameraPreview"

    invoke-direct {v7, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 262
    .local v7, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 263
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 264
    .local v0, "backgroundHandler":Landroid/os/Handler;
    new-instance v4, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;

    invoke-direct {v4, p0, v14}, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 265
    .local v4, "imageReaderListener":Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;
    invoke-virtual {v3, v4, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 269
    const/4 v5, 0x0

    .line 271
    .local v5, "previewRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_start_0
    iget-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v5

    .line 277
    if-nez v5, :cond_1

    .line 278
    const-string v9, "VideoCapture"

    const-string v10, "previewRequestBuilder error"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 273
    :catch_0
    move-exception v2

    .line 274
    .local v2, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v10, "VideoCapture"

    const-string v11, "createCaptureRequest: "

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v8

    invoke-static {v10, v11, v9}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 285
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 286
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 288
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 289
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 293
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .local v6, "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    iput-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 297
    new-instance v1, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;

    iget-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {v1, p0, v10}, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest;)V

    .line 300
    .local v1, "captureSessionListener":Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;
    :try_start_1
    iget-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v1, v11}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    move v8, v9

    .line 306
    goto/16 :goto_0

    .line 301
    :catch_1
    move-exception v2

    .line 302
    .restart local v2    # "ex":Ljava/lang/Exception;
    :goto_2
    const-string v10, "VideoCapture"

    const-string v11, "createCaptureSession: "

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v8

    invoke-static {v10, v11, v9}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 301
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    .line 273
    .end local v1    # "captureSessionListener":Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;
    .end local v6    # "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private static getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 237
    const-string v2, "camera"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 240
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 244
    :goto_0
    return-object v2

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "VideoCapture"

    const-string v3, "getCameraCharacteristics: "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getCaptureApiType(ILandroid/content/Context;)I
    .locals 4
    .param p0, "id"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 379
    invoke-static {p1, p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 381
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v0, :cond_0

    .line 382
    const/4 v2, 0x5

    .line 395
    :goto_0
    return v2

    .line 385
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 387
    .local v1, "supportedHWLevel":I
    packed-switch v1, :pswitch_data_0

    move v2, v3

    .line 395
    goto :goto_0

    :pswitch_0
    move v2, v3

    .line 389
    goto :goto_0

    .line 391
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 393
    :pswitch_2
    const/4 v2, 0x3

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getDeviceSupportedFormats(Landroid/content/Context;I)[Lorg/chromium/media/VideoCaptureFormat;
    .locals 27
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 409
    invoke-static/range {p0 .. p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 411
    .local v4, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v4, :cond_0

    const/16 v22, 0x0

    .line 448
    :goto_0
    return-object v22

    .line 413
    :cond_0
    sget-object v22, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 417
    .local v6, "capabilities":[I
    const/16 v16, 0x0

    .line 418
    .local v16, "minFrameDurationAvailable":Z
    move-object v2, v6

    .local v2, "arr$":[I
    array-length v12, v2

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_1

    aget v5, v2, v10

    .line 419
    .local v5, "cap":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_3

    .line 420
    const/16 v16, 0x1

    .line 425
    .end local v5    # "cap":I
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v8, "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCaptureFormat;>;"
    sget-object v22, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 428
    .local v21, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v9

    .line 429
    .local v9, "formats":[I
    move-object v2, v9

    array-length v12, v2

    const/4 v10, 0x0

    move v11, v10

    .end local v2    # "arr$":[I
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_2
    if-ge v11, v12, :cond_7

    aget v7, v2, v11

    .line 430
    .local v7, "format":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v20

    .line 431
    .local v20, "sizes":[Landroid/util/Size;
    if-nez v20, :cond_4

    .line 429
    .end local v11    # "i$":I
    :cond_2
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_2

    .line 418
    .end local v7    # "format":I
    .end local v8    # "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCaptureFormat;>;"
    .end local v9    # "formats":[I
    .end local v11    # "i$":I
    .end local v20    # "sizes":[Landroid/util/Size;
    .end local v21    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v2    # "arr$":[I
    .restart local v5    # "cap":I
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 432
    .end local v2    # "arr$":[I
    .end local v5    # "cap":I
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .restart local v7    # "format":I
    .restart local v8    # "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCaptureFormat;>;"
    .restart local v9    # "formats":[I
    .restart local v11    # "i$":I
    .restart local v20    # "sizes":[Landroid/util/Size;
    .restart local v21    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_4
    move-object/from16 v3, v20

    .local v3, "arr$":[Landroid/util/Size;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_3
    if-ge v10, v13, :cond_2

    aget-object v17, v3, v10

    .line 433
    .local v17, "size":Landroid/util/Size;
    const-wide/16 v18, 0x0

    .line 434
    .local v18, "minFrameRate":D
    if-eqz v16, :cond_6

    .line 435
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v14

    .line 436
    .local v14, "minFrameDuration":J
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-nez v22, :cond_5

    const-wide/16 v18, 0x0

    .line 444
    .end local v14    # "minFrameDuration":J
    :goto_4
    new-instance v22, Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v24

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v22 .. v26}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 436
    .restart local v14    # "minFrameDuration":J
    :cond_5
    const-wide v22, 0x41cdcd64ffffffffL    # 9.999999999999999E8

    long-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v18, v22, v24

    goto :goto_4

    .line 442
    .end local v14    # "minFrameDuration":J
    :cond_6
    const-wide/16 v18, 0x0

    goto :goto_4

    .line 448
    .end local v3    # "arr$":[Landroid/util/Size;
    .end local v7    # "format":I
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v17    # "size":Landroid/util/Size;
    .end local v18    # "minFrameRate":D
    .end local v20    # "sizes":[Landroid/util/Size;
    .restart local v11    # "i$":I
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Lorg/chromium/media/VideoCaptureFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lorg/chromium/media/VideoCaptureFormat;

    goto/16 :goto_0
.end method

.method static getName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 400
    invoke-static {p1, p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 402
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 404
    :goto_0
    return-object v2

    .line 403
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 404
    .local v1, "facing":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", facing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const-string v2, "front"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "back"

    goto :goto_1
.end method

.method static getNumberOfCameras(Landroid/content/Context;)I
    .locals 6
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 366
    const-string v3, "camera"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 369
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 374
    :goto_0
    return v2

    .line 370
    :catch_0
    move-exception v0

    .line 373
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v3, "VideoCapture"

    const-string v4, "getNumberOfCameras: getCameraIdList(): "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 370
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static isLegacyDevice(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 358
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 360
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyTakePhotoError(J)V
    .locals 7
    .param p1, "callbackId"    # J

    .prologue
    .line 250
    iget-wide v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const/4 v0, 0x0

    new-array v6, v0, [B

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnPhotoTaken(JJ[B)V

    .line 251
    return-void
.end method

.method private static readImageIntoBuffer(Landroid/media/Image;[B)V
    .locals 17
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "data"    # [B

    .prologue
    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 311
    .local v4, "imageWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 312
    .local v3, "imageHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    .line 314
    .local v11, "planes":[Landroid/media/Image$Plane;
    const/4 v5, 0x0

    .line 315
    .local v5, "offset":I
    const/4 v8, 0x0

    .local v8, "plane":I
    :goto_0
    array-length v15, v11

    if-ge v8, v15, :cond_5

    .line 316
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 317
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    .line 321
    .local v14, "rowStride":I
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 322
    .local v7, "pixelStride":I
    if-nez v8, :cond_0

    move v10, v4

    .line 323
    .local v10, "planeWidth":I
    :goto_1
    if-nez v8, :cond_1

    move v9, v3

    .line 325
    .local v9, "planeHeight":I
    :goto_2
    const/4 v15, 0x1

    if-ne v7, v15, :cond_2

    if-ne v14, v10, :cond_2

    .line 327
    mul-int v15, v10, v9

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 328
    mul-int v15, v10, v9

    add-int/2addr v5, v15

    .line 315
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 322
    .end local v9    # "planeHeight":I
    .end local v10    # "planeWidth":I
    :cond_0
    div-int/lit8 v10, v4, 0x2

    goto :goto_1

    .line 323
    .restart local v10    # "planeWidth":I
    :cond_1
    div-int/lit8 v9, v3, 0x2

    goto :goto_2

    .line 331
    .restart local v9    # "planeHeight":I
    :cond_2
    new-array v13, v14, [B

    .line 332
    .local v13, "rowData":[B
    const/4 v12, 0x0

    .local v12, "row":I
    :goto_4
    add-int/lit8 v15, v9, -0x1

    if-ge v12, v15, :cond_4

    .line 333
    const/4 v15, 0x0

    invoke-virtual {v1, v13, v15, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 334
    const/4 v2, 0x0

    .local v2, "col":I
    move v6, v5

    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_5
    if-ge v2, v10, :cond_3

    .line 335
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    mul-int v15, v2, v7

    aget-byte v15, v13, v15

    aput-byte v15, p1, v6

    .line 334
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_5

    .line 332
    :cond_3
    add-int/lit8 v12, v12, 0x1

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_4

    .line 342
    .end local v2    # "col":I
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v13, v15, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 343
    const/4 v2, 0x0

    .restart local v2    # "col":I
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :goto_6
    if-ge v2, v10, :cond_6

    .line 344
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    mul-int v15, v2, v7

    aget-byte v15, v13, v15

    aput-byte v15, p1, v6

    .line 343
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_6

    .line 348
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "col":I
    .end local v6    # "offset":I
    .end local v7    # "pixelStride":I
    .end local v9    # "planeHeight":I
    .end local v10    # "planeWidth":I
    .end local v12    # "row":I
    .end local v13    # "rowData":[B
    .end local v14    # "rowStride":I
    .restart local v5    # "offset":I
    :cond_5
    return-void

    .end local v5    # "offset":I
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "col":I
    .restart local v6    # "offset":I
    .restart local v7    # "pixelStride":I
    .restart local v9    # "planeHeight":I
    .restart local v10    # "planeWidth":I
    .restart local v12    # "row":I
    .restart local v13    # "rowData":[B
    .restart local v14    # "rowStride":I
    :cond_6
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_3
.end method


# virtual methods
.method public allocate(III)Z
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 457
    const-string v12, "VideoCapture"

    const-string v13, "allocate: requested (%d x %d) @%dfps"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v12 .. v16}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v13

    .line 459
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v14, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->OPENING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-eq v12, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v14, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->CONFIGURING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-ne v12, v14, :cond_1

    .line 460
    :cond_0
    const-string v12, "VideoCapture"

    const-string v14, "allocate() invoked while Camera is busy opening/configuring."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v12, v14, v15}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    const/4 v12, 0x0

    monitor-exit v13

    .line 501
    :goto_0
    return v12

    .line 463
    :cond_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v12, v13}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 465
    .local v2, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 469
    .local v10, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/16 v12, 0x23

    invoke-virtual {v10, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v11

    .line 470
    .local v11, "supportedSizes":[Landroid/util/Size;
    if-nez v11, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    .line 463
    .end local v2    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v11    # "supportedSizes":[Landroid/util/Size;
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 471
    .restart local v2    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v11    # "supportedSizes":[Landroid/util/Size;
    :cond_2
    const/4 v3, 0x0

    .line 472
    .local v3, "closestSupportedSize":Landroid/util/Size;
    const v8, 0x7fffffff

    .line 473
    .local v8, "minDiff":I
    move-object v1, v11

    .local v1, "arr$":[Landroid/util/Size;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v9, v1, v6

    .line 474
    .local v9, "size":Landroid/util/Size;
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v12

    sub-int v12, v12, p1

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v13

    sub-int v13, v13, p2

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int v4, v12, v13

    .line 476
    .local v4, "diff":I
    if-ge v4, v8, :cond_3

    .line 477
    move v8, v4

    .line 478
    move-object v3, v9

    .line 473
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 481
    .end local v4    # "diff":I
    .end local v9    # "size":Landroid/util/Size;
    :cond_4
    const v12, 0x7fffffff

    if-ne v8, v12, :cond_5

    .line 482
    const-string v12, "VideoCapture"

    const-string v13, "No supported resolutions."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    const/4 v12, 0x0

    goto :goto_0

    .line 485
    :cond_5
    const-string v12, "VideoCapture"

    const-string v13, "allocate: matched (%d x %d)"

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v12, v13, v14, v15}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 489
    new-instance v12, Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v14

    const/16 v15, 0x23

    move/from16 v0, p3

    invoke-direct {v12, v13, v14, v0, v15}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    .line 491
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v12, v12, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v13, v13, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    mul-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v13, v13, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    invoke-static {v13}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v13

    mul-int/2addr v12, v13

    div-int/lit8 v5, v12, 0x8

    .line 493
    .local v5, "expectedFrameSize":I
    new-array v12, v5, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B

    .line 494
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraNativeOrientation:I

    .line 498
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mInvertDeviceOrientationReadings:Z

    .line 501
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 498
    :cond_6
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public deallocate()V
    .locals 2

    .prologue
    .line 616
    const-string v0, "VideoCapture"

    const-string v1, "deallocate"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public getPhotoCapabilities()Lorg/chromium/media/PhotoCapabilities;
    .locals 5

    .prologue
    .line 553
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v3, v4}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 556
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 561
    .local v2, "maxZoom":I
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v4, v3, 0x64

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int v1, v4, v3

    .line 566
    .local v1, "currentZoom":I
    new-instance v3, Lorg/chromium/media/PhotoCapabilities;

    const/16 v4, 0x64

    invoke-direct {v3, v2, v4, v1}, Lorg/chromium/media/PhotoCapabilities;-><init>(III)V

    return-object v3
.end method

.method public startCapture()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 506
    const-string v6, "VideoCapture"

    const-string v7, "startCapture"

    invoke-static {v6, v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-object v6, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->OPENING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    invoke-direct {p0, v6}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    .line 508
    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 510
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    new-instance v1, Landroid/os/Handler;

    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 511
    .local v1, "mainHandler":Landroid/os/Handler;
    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 513
    .local v3, "stateListener":Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;
    :try_start_0
    iget v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v3, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 519
    :goto_0
    return v4

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v6, "VideoCapture"

    const-string v7, "allocate: manager.openCamera: "

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v6, v7, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    .line 516
    goto :goto_0

    .line 514
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public stopCapture()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    const-string v3, "VideoCapture"

    const-string v4, "stopCapture"

    invoke-static {v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 530
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v5, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STARTED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v5, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v5, :cond_0

    .line 532
    :try_start_1
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "VideoCapture"

    const-string v5, "CaptureStartedEvent: "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 537
    :cond_0
    :try_start_3
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v5, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-ne v4, v5, :cond_1

    monitor-exit v3

    .line 549
    :goto_1
    return v1

    .line 538
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 541
    :try_start_4
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 546
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_1

    .line 542
    :catch_1
    move-exception v0

    .line 543
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    const-string v3, "VideoCapture"

    const-string v4, "abortCaptures: "

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 544
    goto :goto_1

    .line 547
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 548
    sget-object v2, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    invoke-direct {p0, v2}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    goto :goto_1

    .line 542
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public takePhoto(J)Z
    .locals 17
    .param p1, "callbackId"    # J

    .prologue
    .line 571
    const-string v13, "VideoCapture"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "takePhoto "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v14, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STARTED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-eq v13, v14, :cond_1

    :cond_0
    const/4 v13, 0x0

    .line 611
    :goto_0
    return v13

    .line 574
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v13}, Lorg/chromium/media/VideoCaptureFormat;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v14}, Lorg/chromium/media/VideoCaptureFormat;->getHeight()I

    move-result v14

    const/16 v15, 0x100

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v6

    .line 577
    .local v6, "imageReader":Landroid/media/ImageReader;
    new-instance v12, Landroid/os/HandlerThread;

    const-string v13, "CameraPicture"

    invoke-direct {v12, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 578
    .local v12, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    .line 579
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 581
    .local v3, "backgroundHandler":Landroid/os/Handler;
    new-instance v7, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v7, v0, v1, v2}, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;J)V

    .line 582
    .local v7, "photoReaderListener":Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;
    invoke-virtual {v6, v7, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 584
    new-instance v11, Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 585
    .local v11, "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    const/4 v9, 0x0

    .line 589
    .local v9, "photoRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 595
    if-nez v9, :cond_2

    .line 596
    const-string v13, "VideoCapture"

    const-string v14, "photoRequestBuilder error"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    const/4 v13, 0x0

    goto :goto_0

    .line 591
    :catch_0
    move-exception v4

    .line 592
    .local v4, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v13, "VideoCapture"

    const-string v14, "mCameraDevice.createCaptureRequest() error"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    const/4 v13, 0x0

    goto :goto_0

    .line 599
    .end local v4    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 600
    sget-object v13, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraRotation()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 602
    invoke-virtual {v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    .line 603
    .local v8, "photoRequest":Landroid/hardware/camera2/CaptureRequest;
    new-instance v10, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v10, v0, v8, v1, v2}, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest;J)V

    .line 606
    .local v10, "sessionListener":Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v13, v11, v10, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 611
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 607
    :catch_1
    move-exception v5

    .line 608
    .local v5, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v13, "VideoCapture"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "createCaptureSession: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 607
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_1
.end method
