.class Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/a;
.super Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    .line 29
    return-void
.end method


# virtual methods
.method a(FFFLandroid/graphics/Rect;F)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetAspectRatio"    # F
    .param p4, "imageRect"    # Landroid/graphics/Rect;
    .param p5, "snapRadius"    # F

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/a;->a(FFLandroid/graphics/Rect;F)V

    .line 76
    return-void
.end method

.method a(FFLandroid/graphics/Rect;F)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "imageRect"    # Landroid/graphics/Rect;
    .param p4, "snapRadius"    # F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 36
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 37
    .local v3, "left":F
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 38
    .local v8, "top":F
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v7

    .line 39
    .local v7, "right":F
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 41
    .local v0, "bottom":F
    add-float v9, v3, v7

    div-float v1, v9, v10

    .line 42
    .local v1, "currentCenterX":F
    add-float v9, v8, v0

    div-float v2, v9, v10

    .line 44
    .local v2, "currentCenterY":F
    sub-float v5, p1, v1

    .line 45
    .local v5, "offsetX":F
    sub-float v6, p2, v2

    .line 48
    .local v6, "offsetY":F
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 49
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v6}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 50
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 51
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v6}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 54
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3, p4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 55
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v4

    .line 56
    .local v4, "offset":F
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 63
    .end local v4    # "offset":F
    :cond_0
    :goto_0
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3, p4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 64
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v4

    .line 65
    .restart local v4    # "offset":F
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 70
    .end local v4    # "offset":F
    :cond_1
    :goto_1
    return-void

    .line 57
    :cond_2
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3, p4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 58
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v4

    .line 59
    .restart local v4    # "offset":F
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->offset(F)V

    goto :goto_0

    .line 66
    .end local v4    # "offset":F
    :cond_3
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3, p4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 67
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v4

    .line 68
    .restart local v4    # "offset":F
    sget-object v9, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->offset(F)V

    goto :goto_1
.end method
