.class public Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusManager:Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private initialized:Z

.field private final previewCallback:Lcom/jiliguala/niuwa/module/zxing/camera/PreviewCallback;

.field private previewing:Z

.field private requestedCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->requestedCameraId:I

    .line 56
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->configManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;

    .line 58
    new-instance v0, Lcom/jiliguala/niuwa/module/zxing/camera/PreviewCallback;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->configManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/zxing/camera/PreviewCallback;-><init>(Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->previewCallback:Lcom/jiliguala/niuwa/module/zxing/camera/PreviewCallback;

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized closeDriver()V
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->configManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 71
    .local v3, "theCamera":Landroid/hardware/Camera;
    if-nez v3, :cond_2

    .line 73
    iget v4, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->requestedCameraId:I

    if-ltz v4, :cond_0

    .line 74
    iget v4, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->requestedCameraId:I

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/zxing/camera/open/OpenCameraInterface;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    .line 79
    :goto_0
    if-nez v3, :cond_1

    .line 80
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v3    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 76
    .restart local v3    # "theCamera":Landroid/hardware/Camera;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jiliguala/niuwa/module/zxing/camera/open/OpenCameraInterface;->open()Landroid/hardware/Camera;

    move-result-object v3

    goto :goto_0

    .line 82
    :cond_1
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 84
    :cond_2
    invoke-virtual {v3, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 86
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->initialized:Z

    if-nez v4, :cond_3

    .line 87
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->initialized:Z

    .line 88
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->configManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 91
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 92
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_5

    const/4 v1, 0x0

    .line 96
    .local v1, "parametersFlattened":Ljava/lang/String;
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->configManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 92
    .end local v1    # "parametersFlattened":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 97
    .restart local v1    # "parametersFlattened":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 102
    .local v2, "re":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_4

    .line 103
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    :try_start_4
    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 107
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->configManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 108
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 172
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->previewCallback:Lcom/jiliguala/niuwa/module/zxing/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/jiliguala/niuwa/module/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 174
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->previewCallback:Lcom/jiliguala/niuwa/module/zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    monitor-exit p0

    return-void

    .line 171
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setManualCameraId(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->requestedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPreview()V
    .locals 4

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 139
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->previewing:Z

    .line 142
    new-instance v1, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->autoFocusManager:Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    .line 138
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->autoFocusManager:Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->autoFocusManager:Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->stop()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->autoFocusManager:Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->previewCallback:Lcom/jiliguala/niuwa/module/zxing/camera/PreviewCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_1
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
