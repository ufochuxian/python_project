.class public final Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_ASPECT_DISTORTION:D = 0.15

.field private static final MIN_PREVIEW_PIXELS:I = 0x25800

.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 28
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v16

    .line 140
    .local v16, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v16, :cond_0

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 143
    .local v5, "defaultSize":Landroid/hardware/Camera$Size;
    new-instance v8, Landroid/graphics/Point;

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v8, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 219
    .end local v5    # "defaultSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v8

    .line 147
    :cond_0
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 148
    .local v22, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v23, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager$1;-><init>(Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;)V

    invoke-static/range {v22 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    const-string v23, "CameraConfiguration"

    const/16 v24, 0x4

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 164
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v15, "previewSizesString":Ljava/lang/StringBuilder;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Size;

    .line 166
    .local v19, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x78

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    .end local v15    # "previewSizesString":Ljava/lang/StringBuilder;
    .end local v19    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v20, v24, v26

    .line 174
    .local v20, "screenAspectRatio":D
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 175
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 176
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Size;

    .line 177
    .restart local v19    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    .line 178
    .local v18, "realWidth":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v17, v0

    .line 179
    .local v17, "realHeight":I
    mul-int v23, v18, v17

    const v24, 0x25800

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 180
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 184
    :cond_3
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    const/4 v9, 0x1

    .line 185
    .local v9, "isCandidatePortrait":Z
    :goto_3
    if-eqz v9, :cond_5

    move/from16 v14, v17

    .line 186
    .local v14, "maybeFlippedWidth":I
    :goto_4
    if-eqz v9, :cond_6

    move/from16 v13, v18

    .line 188
    .local v13, "maybeFlippedHeight":I
    :goto_5
    int-to-double v0, v14

    move-wide/from16 v24, v0

    int-to-double v0, v13

    move-wide/from16 v26, v0

    div-double v2, v24, v26

    .line 189
    .local v2, "aspectRatio":D
    sub-double v24, v2, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 190
    .local v6, "distortion":D
    const-wide v24, 0x3fc3333333333333L    # 0.15

    cmpl-double v23, v6, v24

    if-lez v23, :cond_7

    .line 191
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 184
    .end local v2    # "aspectRatio":D
    .end local v6    # "distortion":D
    .end local v9    # "isCandidatePortrait":Z
    .end local v13    # "maybeFlippedHeight":I
    .end local v14    # "maybeFlippedWidth":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .restart local v9    # "isCandidatePortrait":Z
    :cond_5
    move/from16 v14, v18

    .line 185
    goto :goto_4

    .restart local v14    # "maybeFlippedWidth":I
    :cond_6
    move/from16 v13, v17

    .line 186
    goto :goto_5

    .line 195
    .restart local v2    # "aspectRatio":D
    .restart local v6    # "distortion":D
    .restart local v13    # "maybeFlippedHeight":I
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v14, v0, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v13, v0, :cond_2

    .line 196
    new-instance v8, Landroid/graphics/Point;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 198
    .local v8, "exactPoint":Landroid/graphics/Point;
    goto/16 :goto_0

    .line 207
    .end local v2    # "aspectRatio":D
    .end local v6    # "distortion":D
    .end local v8    # "exactPoint":Landroid/graphics/Point;
    .end local v9    # "isCandidatePortrait":Z
    .end local v13    # "maybeFlippedHeight":I
    .end local v14    # "maybeFlippedWidth":I
    .end local v17    # "realHeight":I
    .end local v18    # "realWidth":I
    .end local v19    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_8
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_9

    .line 208
    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 209
    .local v11, "largestPreview":Landroid/hardware/Camera$Size;
    new-instance v12, Landroid/graphics/Point;

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .local v12, "largestSize":Landroid/graphics/Point;
    move-object v8, v12

    .line 211
    goto/16 :goto_0

    .line 215
    .end local v11    # "largestPreview":Landroid/hardware/Camera$Size;
    .end local v12    # "largestSize":Landroid/graphics/Point;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 216
    .local v4, "defaultPreview":Landroid/hardware/Camera$Size;
    new-instance v5, Landroid/graphics/Point;

    iget v0, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .local v5, "defaultSize":Landroid/graphics/Point;
    move-object v8, v5

    .line 219
    goto/16 :goto_0
.end method

.method private getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 3
    .param p1, "display"    # Landroid/view/Display;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 86
    .local v1, "point":Landroid/graphics/Point;
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ignore":Ljava/lang/NoSuchMethodError;
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 89
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method


# virtual methods
.method public getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method public initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 58
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 59
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 60
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 61
    .local v4, "theScreenResolution":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v4

    .line 63
    iput-object v4, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 67
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 68
    .local v3, "screenResolutionForCamera":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 69
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v3, Landroid/graphics/Point;->y:I

    .line 71
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_0

    .line 72
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 73
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v3, Landroid/graphics/Point;->y:I

    .line 76
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 79
    return-void
.end method

.method public setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "safeMode"    # Z

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 97
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_0

    .line 122
    :goto_0
    return-void

    .line 104
    :cond_0
    if-eqz p2, :cond_1

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 109
    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 111
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 112
    .local v0, "afterParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 113
    .local v1, "afterSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    if-eq v3, v4, :cond_3

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 117
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 121
    :cond_3
    const/16 v3, 0x5a

    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0
.end method
