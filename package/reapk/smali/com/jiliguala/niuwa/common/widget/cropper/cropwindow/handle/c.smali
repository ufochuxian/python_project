.class abstract Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:F = 1.0f


# instance fields
.field private b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

.field private c:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

.field private d:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V
    .locals 3
    .param p1, "horizontalEdge"    # Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
    .param p2, "verticalEdge"    # Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 50
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->c:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 51
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->c:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->d:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;

    .line 52
    return-void
.end method

.method private a(FF)F
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 156
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->c:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    if-ne v5, v6, :cond_0

    move v2, p1

    .line 157
    .local v2, "left":F
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    if-ne v5, v6, :cond_1

    move v4, p2

    .line 158
    .local v4, "top":F
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->c:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    if-ne v5, v6, :cond_2

    move v3, p1

    .line 159
    .local v3, "right":F
    :goto_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    if-ne v5, v6, :cond_3

    move v1, p2

    .line 161
    .local v1, "bottom":F
    :goto_3
    invoke-static {v2, v4, v3, v1}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->a(FFFF)F

    move-result v0

    .line 163
    .local v0, "aspectRatio":F
    return v0

    .line 156
    .end local v0    # "aspectRatio":F
    .end local v1    # "bottom":F
    .end local v2    # "left":F
    .end local v3    # "right":F
    .end local v4    # "top":F
    :cond_0
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    goto :goto_0

    .line 157
    .restart local v2    # "left":F
    :cond_1
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    goto :goto_1

    .line 158
    .restart local v4    # "top":F
    :cond_2
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    goto :goto_2

    .line 159
    .restart local v3    # "right":F
    :cond_3
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    goto :goto_3
.end method


# virtual methods
.method a()Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->d:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;

    return-object v0
.end method

.method a(FFF)Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetAspectRatio"    # F

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->a(FF)F

    move-result v0

    .line 132
    .local v0, "potentialAspectRatio":F
    cmpl-float v1, v0, p3

    if-lez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->d:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->c:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 134
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->d:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->d:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;

    return-object v1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->d:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 137
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->d:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->c:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    goto :goto_0
.end method

.method abstract a(FFFLandroid/graphics/Rect;F)V
.end method

.method a(FFLandroid/graphics/Rect;F)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "imageRect"    # Landroid/graphics/Rect;
    .param p4, "snapRadius"    # F

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->a()Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;

    move-result-object v7

    .line 73
    .local v7, "activeEdges":Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;
    iget-object v0, v7, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 74
    .local v0, "primaryEdge":Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
    iget-object v8, v7, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 76
    .local v8, "secondaryEdge":Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
    if-eqz v0, :cond_0

    .line 77
    const/high16 v5, 0x3f800000    # 1.0f

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 79
    :cond_0
    if-eqz v8, :cond_1

    .line 80
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v8

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 81
    :cond_1
    return-void
.end method
