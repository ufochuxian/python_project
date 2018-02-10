.class Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

.field private b:Landroid/graphics/RadialGradient;

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;II)V
    .locals 7
    .param p2, "shadowRadius"    # I
    .param p3, "circleDiameter"    # I

    .prologue
    .line 389
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 390
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 391
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->d:Landroid/graphics/Paint;

    .line 392
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->c:I

    .line 393
    iput p3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->e:I

    .line 394
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->e:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->e:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->c:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->b:Landroid/graphics/RadialGradient;

    .line 396
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->b:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 397
    return-void

    .line 394
    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 401
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getWidth()I

    move-result v1

    .line 402
    .local v1, "viewWidth":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->getHeight()I

    move-result v0

    .line 403
    .local v0, "viewHeight":I
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->e:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->c:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 404
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar$a;->e:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 405
    return-void
.end method
