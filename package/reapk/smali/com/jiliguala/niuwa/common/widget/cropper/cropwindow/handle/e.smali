.class Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;
.super Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;
.source "SourceFile"


# instance fields
.field private a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V
    .locals 1
    .param p1, "edge"    # Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 35
    return-void
.end method


# virtual methods
.method a(FFFLandroid/graphics/Rect;F)V
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetAspectRatio"    # F
    .param p4, "imageRect"    # Landroid/graphics/Rect;
    .param p5, "snapRadius"    # F

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 45
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v12

    .line 46
    .local v12, "left":F
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v16

    .line 47
    .local v16, "top":F
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v14

    .line 48
    .local v14, "right":F
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 51
    .local v8, "bottom":F
    move/from16 v0, p3

    invoke-static {v12, v14, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->b(FFF)F

    move-result v15

    .line 52
    .local v15, "targetHeight":F
    sub-float v9, v8, v16

    .line 56
    .local v9, "currentHeight":F
    sub-float v10, v15, v9

    .line 57
    .local v10, "difference":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v10, v2

    .line 58
    .local v11, "halfDifference":F
    sub-float v16, v16, v11

    .line 59
    add-float/2addr v8, v11

    .line 61
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 62
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2, v8}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 65
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    move-object/from16 v0, p4

    move/from16 v1, p3

    invoke-virtual {v2, v3, v0, v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isNewRectangleOutOfBounds(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Landroid/graphics/Rect;F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v13

    .line 67
    .local v13, "offset":F
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    neg-float v3, v13

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 70
    .end local v13    # "offset":F
    :cond_0
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    move-object/from16 v0, p4

    move/from16 v1, p3

    invoke-virtual {v2, v3, v0, v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isNewRectangleOutOfBounds(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Landroid/graphics/Rect;F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v13

    .line 72
    .restart local v13    # "offset":F
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    neg-float v3, v13

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 75
    .end local v13    # "offset":F
    :cond_1
    return-void
.end method
