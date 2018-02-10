.class Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/b;
.super Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V
    .locals 0
    .param p1, "horizontalEdge"    # Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
    .param p2, "verticalEdge"    # Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    .line 31
    return-void
.end method


# virtual methods
.method a(FFFLandroid/graphics/Rect;F)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetAspectRatio"    # F
    .param p4, "imageRect"    # Landroid/graphics/Rect;
    .param p5, "snapRadius"    # F

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/b;->a(FFF)Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;

    move-result-object v6

    .line 39
    .local v6, "activeEdges":Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;
    iget-object v0, v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 40
    .local v0, "primaryEdge":Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
    iget-object v7, v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .local v7, "secondaryEdge":Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
    move v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p3

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 43
    invoke-virtual {v7, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 45
    invoke-virtual {v7, p4, p5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v7, p4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    .line 47
    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 49
    :cond_0
    return-void
.end method
