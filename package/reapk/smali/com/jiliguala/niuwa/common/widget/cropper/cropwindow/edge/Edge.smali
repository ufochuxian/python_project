.class public final enum Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

.field public static final enum BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

.field public static final enum LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

.field public static final MIN_CROP_LENGTH_PX:I = 0x28

.field public static final enum RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

.field public static final enum TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;


# instance fields
.field private mCoordinate:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static adjustBottom(FLandroid/graphics/Rect;FF)F
    .locals 5
    .param p0, "y"    # F
    .param p1, "imageRect"    # Landroid/graphics/Rect;
    .param p2, "imageSnapRadius"    # F
    .param p3, "aspectRatio"    # F

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    .line 182
    move v0, p0

    .line 184
    .local v0, "resultY":F
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, p0

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    .line 185
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v3

    .line 202
    :goto_0
    return v0

    .line 188
    :cond_0
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 189
    .local v2, "resultYVert":F
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 192
    .local v1, "resultYHoriz":F
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    add-float/2addr v3, v4

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_1

    .line 193
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    add-float v2, v3, v4

    .line 196
    :cond_1
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float v3, p0, v3

    mul-float/2addr v3, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 197
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    div-float/2addr v4, p3

    add-float v1, v3, v4

    .line 199
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private static adjustLeft(FLandroid/graphics/Rect;FF)F
    .locals 5
    .param p0, "x"    # F
    .param p1, "imageRect"    # Landroid/graphics/Rect;
    .param p2, "imageSnapRadius"    # F
    .param p3, "aspectRatio"    # F

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    .line 68
    move v0, p0

    .line 70
    .local v0, "resultX":F
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v3, p0, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    .line 71
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v3

    .line 88
    :goto_0
    return v0

    .line 75
    :cond_0
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 76
    .local v1, "resultXHoriz":F
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 79
    .local v2, "resultXVert":F
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float/2addr v3, v4

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_1

    .line 80
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float v1, v3, v4

    .line 83
    :cond_1
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float/2addr v3, p0

    div-float/2addr v3, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 84
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    mul-float/2addr v4, p3

    sub-float v2, v3, v4

    .line 86
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private static adjustRight(FLandroid/graphics/Rect;FF)F
    .locals 5
    .param p0, "x"    # F
    .param p1, "imageRect"    # Landroid/graphics/Rect;
    .param p2, "imageSnapRadius"    # F
    .param p3, "aspectRatio"    # F

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    .line 104
    move v0, p0

    .line 107
    .local v0, "resultX":F
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, p0

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    .line 108
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v3

    .line 128
    :goto_0
    return v0

    .line 112
    :cond_0
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 113
    .local v1, "resultXHoriz":F
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 116
    .local v2, "resultXVert":F
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    add-float/2addr v3, v4

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_1

    .line 117
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    add-float v1, v3, v4

    .line 120
    :cond_1
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float v3, p0, v3

    div-float/2addr v3, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 121
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    mul-float/2addr v4, p3

    add-float v2, v3, v4

    .line 124
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private static adjustTop(FLandroid/graphics/Rect;FF)F
    .locals 5
    .param p0, "y"    # F
    .param p1, "imageRect"    # Landroid/graphics/Rect;
    .param p2, "imageSnapRadius"    # F
    .param p3, "aspectRatio"    # F

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    .line 144
    move v0, p0

    .line 146
    .local v0, "resultY":F
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p0, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    .line 147
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v3

    .line 166
    :goto_0
    return v0

    .line 151
    :cond_0
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 152
    .local v2, "resultYVert":F
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 155
    .local v1, "resultYHoriz":F
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float/2addr v3, v4

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_1

    .line 156
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float v1, v3, v4

    .line 159
    :cond_1
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float/2addr v3, p0

    mul-float/2addr v3, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 160
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    div-float/2addr v4, p3

    sub-float v2, v3, v4

    .line 162
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public static getHeight()F
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static getWidth()F
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private isOutOfBounds(FFFFLandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .param p5, "imageRect"    # Landroid/graphics/Rect;

    .prologue
    .line 402
    iget v0, p5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p5, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    iget v0, p5, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    return-object v0
.end method


# virtual methods
.method public adjustCoordinate(F)V
    .locals 6
    .param p1, "aspectRatio"    # F

    .prologue
    .line 274
    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 275
    .local v1, "left":F
    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 276
    .local v3, "top":F
    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 277
    .local v2, "right":F
    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 279
    .local v0, "bottom":F
    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 281
    :pswitch_0
    invoke-static {v3, v2, v0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->b(FFFF)F

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 284
    :pswitch_1
    invoke-static {v1, v2, v0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->c(FFFF)F

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-static {v1, v3, v0, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->d(FFFF)F

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 290
    :pswitch_3
    invoke-static {v1, v3, v2, p1}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->e(FFFF)F

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public adjustCoordinate(FFLandroid/graphics/Rect;FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "imageRect"    # Landroid/graphics/Rect;
    .param p4, "imageSnapRadius"    # F
    .param p5, "aspectRatio"    # F

    .prologue
    .line 250
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 252
    :pswitch_0
    invoke-static {p1, p3, p4, p5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustLeft(FLandroid/graphics/Rect;FF)F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-static {p2, p3, p4, p5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustTop(FLandroid/graphics/Rect;FF)F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 258
    :pswitch_2
    invoke-static {p1, p3, p4, p5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustRight(FLandroid/graphics/Rect;FF)F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 261
    :pswitch_3
    invoke-static {p2, p3, p4, p5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->adjustBottom(FLandroid/graphics/Rect;FF)F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCoordinate()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    return v0
.end method

.method public isNewRectangleOutOfBounds(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Landroid/graphics/Rect;F)Z
    .locals 7
    .param p1, "edge"    # Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
    .param p2, "imageRect"    # Landroid/graphics/Rect;
    .param p3, "aspectRatio"    # F

    .prologue
    .line 308
    invoke-virtual {p1, p2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->snapOffset(Landroid/graphics/Rect;)F

    move-result v6

    .line 310
    .local v6, "offset":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 388
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 312
    :pswitch_0
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v0

    .line 314
    .local v1, "top":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v3, v0, v6

    .line 315
    .local v3, "bottom":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 316
    .local v4, "right":F
    invoke-static {v1, v4, v3, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->b(FFFF)F

    move-result v2

    .local v2, "left":F
    move-object v0, p0

    move-object v5, p2

    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 320
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :cond_1
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    .line 322
    .restart local v3    # "bottom":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v1, v0, v6

    .line 323
    .restart local v1    # "top":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 324
    .restart local v4    # "right":F
    invoke-static {v1, v4, v3, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->b(FFFF)F

    move-result v2

    .restart local v2    # "left":F
    move-object v0, p0

    move-object v5, p2

    .line 326
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 331
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :pswitch_1
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    .line 333
    .restart local v2    # "left":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v4, v0, v6

    .line 334
    .restart local v4    # "right":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 335
    .restart local v3    # "bottom":F
    invoke-static {v2, v4, v3, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->c(FFFF)F

    move-result v1

    .restart local v1    # "top":F
    move-object v0, p0

    move-object v5, p2

    .line 337
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 339
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :cond_2
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    .line 341
    .restart local v4    # "right":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v2, v0, v6

    .line 342
    .restart local v2    # "left":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 343
    .restart local v3    # "bottom":F
    invoke-static {v2, v4, v3, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->c(FFFF)F

    move-result v1

    .restart local v1    # "top":F
    move-object v0, p0

    move-object v5, p2

    .line 345
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_0

    .line 350
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :pswitch_2
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v0

    .line 352
    .restart local v1    # "top":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v3, v0, v6

    .line 353
    .restart local v3    # "bottom":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 354
    .restart local v2    # "left":F
    invoke-static {v2, v1, v3, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->d(FFFF)F

    move-result v4

    .restart local v4    # "right":F
    move-object v0, p0

    move-object v5, p2

    .line 356
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_0

    .line 358
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :cond_3
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    .line 360
    .restart local v3    # "bottom":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v1, v0, v6

    .line 361
    .restart local v1    # "top":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 362
    .restart local v2    # "left":F
    invoke-static {v2, v1, v3, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->d(FFFF)F

    move-result v4

    .restart local v4    # "right":F
    move-object v0, p0

    move-object v5, p2

    .line 364
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_0

    .line 369
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :pswitch_3
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    .line 371
    .restart local v2    # "left":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v4, v0, v6

    .line 372
    .restart local v4    # "right":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 373
    .restart local v1    # "top":F
    invoke-static {v2, v1, v4, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->e(FFFF)F

    move-result v3

    .restart local v3    # "bottom":F
    move-object v0, p0

    move-object v5, p2

    .line 375
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_0

    .line 377
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :cond_4
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    .line 379
    .restart local v4    # "right":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v2, v0, v6

    .line 380
    .restart local v2    # "left":F
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 381
    .restart local v1    # "top":F
    invoke-static {v2, v1, v4, p3}, Lcom/jiliguala/niuwa/common/widget/cropper/a/a;->e(FFFF)F

    move-result v3

    .restart local v3    # "bottom":F
    move-object v0, p0

    move-object v5, p2

    .line 383
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isOutsideFrame(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 523
    const-wide/16 v0, 0x0

    .line 524
    .local v0, "margin":D
    const/4 v2, 0x0

    .line 526
    .local v2, "result":Z
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 540
    :goto_0
    return v2

    .line 528
    :pswitch_0
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-double v6, v5

    cmpg-double v5, v6, v0

    if-gez v5, :cond_0

    move v2, v3

    .line 529
    :goto_1
    goto :goto_0

    :cond_0
    move v2, v4

    .line 528
    goto :goto_1

    .line 531
    :pswitch_1
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget v6, p1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-double v6, v5

    cmpg-double v5, v6, v0

    if-gez v5, :cond_1

    move v2, v3

    .line 532
    :goto_2
    goto :goto_0

    :cond_1
    move v2, v4

    .line 531
    goto :goto_2

    .line 534
    :pswitch_2
    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    cmpg-double v5, v6, v0

    if-gez v5, :cond_2

    move v2, v3

    .line 535
    :goto_3
    goto :goto_0

    :cond_2
    move v2, v4

    .line 534
    goto :goto_3

    .line 537
    :pswitch_3
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    cmpg-double v5, v6, v0

    if-gez v5, :cond_3

    move v2, v3

    :goto_4
    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_4

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isOutsideMargin(Landroid/graphics/Rect;F)Z
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "margin"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 498
    const/4 v0, 0x0

    .line 500
    .local v0, "result":Z
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 514
    :goto_0
    return v0

    .line 502
    :pswitch_0
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    move v0, v1

    .line 503
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 502
    goto :goto_1

    .line 505
    :pswitch_1
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v3, v3, p2

    if-gez v3, :cond_1

    move v0, v1

    .line 506
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 505
    goto :goto_2

    .line 508
    :pswitch_2
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v3, v4

    cmpg-float v3, v3, p2

    if-gez v3, :cond_2

    move v0, v1

    .line 509
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v2

    .line 508
    goto :goto_3

    .line 511
    :pswitch_3
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v3, v4

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v0, v1

    :goto_4
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public offset(F)V
    .locals 1
    .param p1, "distance"    # F

    .prologue
    .line 212
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 213
    return-void
.end method

.method public setCoordinate(F)V
    .locals 0
    .param p1, "coordinate"    # F

    .prologue
    .line 232
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 233
    return-void
.end method

.method public snapOffset(Landroid/graphics/Rect;)F
    .locals 5
    .param p1, "imageRect"    # Landroid/graphics/Rect;

    .prologue
    .line 446
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 447
    .local v2, "oldCoordinate":F
    move v0, v2

    .line 449
    .local v0, "newCoordinate":F
    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 464
    :goto_0
    sub-float v1, v0, v2

    .line 465
    .local v1, "offset":F
    return v1

    .line 451
    .end local v1    # "offset":F
    :pswitch_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v3

    .line 452
    goto :goto_0

    .line 454
    :pswitch_1
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v3

    .line 455
    goto :goto_0

    .line 457
    :pswitch_2
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v3

    .line 458
    goto :goto_0

    .line 460
    :pswitch_3
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v3

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public snapToRect(Landroid/graphics/Rect;)F
    .locals 4
    .param p1, "imageRect"    # Landroid/graphics/Rect;

    .prologue
    .line 414
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 416
    .local v1, "oldCoordinate":F
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 431
    :goto_0
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float v0, v2, v1

    .line 432
    .local v0, "offset":F
    return v0

    .line 418
    .end local v0    # "offset":F
    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 421
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 424
    :pswitch_2
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 427
    :pswitch_3
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public snapToView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 475
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 489
    :goto_0
    return-void

    .line 477
    :pswitch_0
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 480
    :pswitch_1
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 483
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 486
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
