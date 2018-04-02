.class public Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;
    }
.end annotation


# instance fields
.field private final activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

.field private final cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

.field private final decodeThread:Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;

.field private state:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;I)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;
    .param p2, "cameraManager"    # Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;
    .param p3, "decodeMode"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    .line 44
    new-instance v0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;

    invoke-direct {v0, p1, p3}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;-><init>(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->decodeThread:Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;

    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->decodeThread:Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->start()V

    .line 46
    sget-object v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->SUCCESS:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->state:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    .line 49
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    .line 50
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->startPreview()V

    .line 51
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 52
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->state:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    sget-object v1, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->SUCCESS:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    if-ne v0, v1, :cond_0

    .line 99
    sget-object v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->PREVIEW:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->state:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->decodeThread:Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0901a5

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 58
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 61
    :sswitch_1
    sget-object v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->SUCCESS:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->state:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    .line 64
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/os/Bundle;)V

    goto :goto_0

    .line 69
    :sswitch_2
    sget-object v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->PREVIEW:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->state:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->decodeThread:Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0901a5

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 73
    :sswitch_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->finish()V

    goto :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x7f0901a6 -> :sswitch_2
        0x7f0901a7 -> :sswitch_1
        0x7f090459 -> :sswitch_0
        0x7f09045f -> :sswitch_3
    .end sparse-switch
.end method

.method public quitSynchronously()V
    .locals 4

    .prologue
    .line 80
    sget-object v1, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->DONE:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->state:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->cameraManager:Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->stopPreview()V

    .line 82
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->decodeThread:Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f090429

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->decodeThread:Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    const v1, 0x7f0901a7

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->removeMessages(I)V

    .line 94
    const v1, 0x7f0901a6

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;->removeMessages(I)V

    .line 95
    return-void

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method
