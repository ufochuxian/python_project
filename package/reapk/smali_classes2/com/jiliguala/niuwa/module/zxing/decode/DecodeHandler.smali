.class public Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;Ljava/util/Map;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->running:Z

    .line 47
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 49
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    .line 50
    return-void
.end method

.method private static bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "source"    # Lcom/google/zxing/PlanarYUVLuminanceSource;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v0

    .line 54
    .local v0, "pixels":[I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v2

    .line 55
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v4

    .line 56
    .local v4, "height":I
    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 57
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v6, v1, v3, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 59
    const-string v1, "barcode_bitmap"

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 60
    return-void
.end method

.method private decode([BII)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 90
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getCameraManager()Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraManager;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 93
    .local v5, "size":Landroid/hardware/Camera$Size;
    array-length v10, p1

    new-array v4, v10, [B

    .line 94
    .local v4, "rotatedData":[B
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_0
    iget v10, v5, Landroid/hardware/Camera$Size;->height:I

    if-ge v9, v10, :cond_1

    .line 95
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    iget v10, v5, Landroid/hardware/Camera$Size;->width:I

    if-ge v8, v10, :cond_0

    .line 96
    iget v10, v5, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v10, v8

    iget v11, v5, Landroid/hardware/Camera$Size;->height:I

    add-int/2addr v10, v11

    sub-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x1

    iget v11, v5, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    aget-byte v11, p1, v11

    aput-byte v11, v4, v10

    .line 95
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 94
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 100
    .end local v8    # "x":I
    :cond_1
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    .line 101
    .local v7, "tmp":I
    iget v10, v5, Landroid/hardware/Camera$Size;->height:I

    iput v10, v5, Landroid/hardware/Camera$Size;->width:I

    .line 102
    iput v7, v5, Landroid/hardware/Camera$Size;->height:I

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "rawResult":Lcom/google/zxing/Result;
    iget v10, v5, Landroid/hardware/Camera$Size;->width:I

    iget v11, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v4, v10, v11}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v6

    .line 106
    .local v6, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    if-eqz v6, :cond_2

    .line 107
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v10, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v10, v6}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 109
    .local v0, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v10, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 113
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v10}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 117
    .end local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 118
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_4

    .line 120
    if-eqz v1, :cond_3

    .line 121
    const v10, 0x7f0901a7

    invoke-static {v1, v10, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 125
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 134
    .end local v2    # "message":Landroid/os/Message;
    :cond_3
    :goto_3
    return-void

    .line 110
    .end local v1    # "handler":Landroid/os/Handler;
    .restart local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :catch_0
    move-exception v10

    .line 113
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v10}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v11}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 114
    throw v10

    .line 128
    .end local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v1    # "handler":Landroid/os/Handler;
    :cond_4
    if-eqz v1, :cond_3

    .line 129
    const v10, 0x7f0901a6

    invoke-static {v1, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 130
    .restart local v2    # "message":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->activity:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->getCropRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 149
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->running:Z

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 69
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 72
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/decode/DecodeHandler;->running:Z

    .line 73
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x7f0901a5 -> :sswitch_0
        0x7f090422 -> :sswitch_1
    .end sparse-switch
.end method
