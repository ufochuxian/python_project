.class public Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "saved_state"

.field private static final c:Ljava/lang/String; = "progress"

.field private static final d:Ljava/lang/String; = "marker_progress"

.field private static final e:Ljava/lang/String; = "progress_background_color"

.field private static final f:Ljava/lang/String; = "progress_color"

.field private static final g:Ljava/lang/String; = "thumb_visible"

.field private static final h:Ljava/lang/String; = "marker_visible"

.field private static final i:Ljava/lang/String; = "THUMB_TEXT"


# instance fields
.field private A:F

.field private B:Landroid/graphics/Paint;

.field private C:F

.field private D:F

.field private E:I

.field private F:F

.field private G:F

.field private H:I

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/RectF;

.field private l:Ljava/lang/String;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/graphics/Paint;

.field private u:F

.field private v:Z

.field private w:F

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 183
    const v0, 0x7f04005c

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v6, 0x11

    const/high16 v5, 0x41b00000    # 22.0f

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->j:Landroid/graphics/RectF;

    .line 69
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->k:Landroid/graphics/RectF;

    .line 70
    const-string v1, "0/0"

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->l:Ljava/lang/String;

    .line 74
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->m:Landroid/graphics/Paint;

    .line 78
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->n:I

    .line 82
    iput v6, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->o:I

    .line 86
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->p:I

    .line 91
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->q:Z

    .line 95
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->r:Z

    .line 99
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->s:Z

    .line 107
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->u:F

    .line 111
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->v:Z

    .line 115
    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->w:F

    .line 136
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->B:Landroid/graphics/Paint;

    .line 152
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->E:I

    .line 164
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->H:I

    .line 199
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->HoloCircularProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 200
    .local v0, "attributes":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 202
    const/4 v1, 0x5

    const v2, -0xff0001

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->setProgressColor(I)V

    .line 203
    const/4 v1, 0x4

    const v2, -0xff0100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->setProgressBackgroundColor(I)V

    .line 204
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->setProgress(F)V

    .line 205
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->setMarkerProgress(F)V

    .line 206
    const/4 v1, 0x6

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->setWheelSize(I)V

    .line 207
    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->setThumbEnabled(Z)V

    .line 208
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->setMarkerEnabled(Z)V

    .line 210
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->n:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->E:I

    .line 219
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->c()V

    .line 221
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->d()V

    .line 223
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->e()V

    .line 226
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->q:Z

    .line 228
    return-void

    .line 213
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    throw v1
.end method

.method private a(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 539
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->o:I

    .line 540
    .local v0, "absoluteGravity":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 541
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->o:I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 544
    :cond_0
    and-int/lit8 v1, v0, 0x7

    packed-switch v1, :pswitch_data_0

    .line 553
    :pswitch_0
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->p:I

    .line 556
    :goto_0
    and-int/lit8 v1, v0, 0x70

    sparse-switch v1, :sswitch_data_0

    .line 565
    div-int/lit8 v1, p2, 0x2

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->H:I

    .line 568
    :goto_1
    return-void

    .line 546
    :pswitch_1
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->p:I

    goto :goto_0

    .line 549
    :pswitch_2
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->p:I

    goto :goto_0

    .line 558
    :sswitch_0
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->H:I

    goto :goto_1

    .line 561
    :sswitch_1
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->H:I

    goto :goto_1

    .line 544
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 556
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private c()V
    .locals 2

    .prologue
    .line 590
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->m:Landroid/graphics/Paint;

    .line 591
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 592
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 593
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 595
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->invalidate()V

    .line 596
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 602
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->t:Landroid/graphics/Paint;

    .line 603
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 604
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 605
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->n:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 607
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->invalidate()V

    .line 608
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 614
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->z:Landroid/graphics/Paint;

    .line 615
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 616
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 617
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 619
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->B:Landroid/graphics/Paint;

    .line 620
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 621
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 622
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->B:Landroid/graphics/Paint;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 624
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->invalidate()V

    .line 625
    return-void
.end method

.method private getCurrentRotation()F
    .locals 2

    .prologue
    .line 575
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->w:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getMarkerRotation()F
    .locals 2

    .prologue
    .line 583
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->u:F

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->r:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->s:Z

    return v0
.end method

.method public getCircleStrokeWidth()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->n:I

    return v0
.end method

.method public getMarkerProgress()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->u:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->w:F

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->y:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->F:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->G:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getCurrentRotation()F

    move-result v12

    .line 245
    .local v12, "progressRotation":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->v:Z

    if-nez v2, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->j:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v12

    neg-float v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->m:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 250
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->j:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->v:Z

    if-eqz v2, :cond_3

    const/high16 v5, 0x43b40000    # 360.0f

    :goto_0
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->z:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 253
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->r:Z

    if-eqz v2, :cond_1

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getMarkerRotation()F

    move-result v10

    .line 256
    .local v10, "markerRotation":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v2, v10, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->C:F

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->E:I

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    const-wide v6, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v3, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->D:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->C:F

    float-to-double v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->E:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v14, v2

    const-wide v16, 0x3ff6666666666666L    # 1.4

    mul-double v14, v14, v16

    sub-double/2addr v6, v14

    double-to-float v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->D:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->t:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 263
    .end local v10    # "markerRotation":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 266
    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v2, v12, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->k:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->C:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->E:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->k:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->C:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->E:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->k:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->D:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->E:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->k:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->D:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->E:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->k:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->B:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 276
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 277
    .local v11, "paint":Landroid/graphics/Paint;
    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 279
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 281
    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v12

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->C:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->D:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 284
    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    .line 285
    .local v9, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float v8, v2, v3

    .line 287
    .local v8, "baseline":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->C:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 291
    .end local v8    # "baseline":F
    .end local v9    # "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v11    # "paint":Landroid/graphics/Paint;
    :cond_2
    return-void

    :cond_3
    move v5, v12

    .line 250
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5, p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getDefaultSize(II)I

    move-result v3

    .line 296
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->getDefaultSize(II)I

    move-result v4

    .line 299
    .local v4, "width":I
    if-nez p2, :cond_0

    .line 301
    move v0, v4

    .line 302
    .local v0, "diameter":I
    invoke-direct {p0, v7, v7}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->a(II)V

    .line 313
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->setMeasuredDimension(II)V

    .line 315
    int-to-float v5, v0

    mul-float v2, v5, v8

    .line 319
    .local v2, "halfWidth":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->E:I

    int-to-float v5, v5

    const v6, 0x40133333    # 2.3f

    mul-float v1, v5, v6

    .line 329
    .local v1, "drawedWith":F
    :goto_1
    sub-float v5, v2, v1

    sub-float/2addr v5, v8

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->A:F

    .line 331
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->j:Landroid/graphics/RectF;

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->A:F

    neg-float v6, v6

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->A:F

    neg-float v7, v7

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->A:F

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->A:F

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 333
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->A:F

    float-to-double v6, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->C:F

    .line 334
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->A:F

    float-to-double v6, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->D:F

    .line 336
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->p:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->F:F

    .line 337
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->H:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->G:F

    .line 339
    return-void

    .line 303
    .end local v0    # "diameter":I
    .end local v1    # "drawedWith":F
    .end local v2    # "halfWidth":F
    :cond_0
    if-nez p1, :cond_1

    .line 305
    move v0, v3

    .line 306
    .restart local v0    # "diameter":I
    invoke-direct {p0, v7, v7}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->a(II)V

    goto :goto_0

    .line 309
    .end local v0    # "diameter":I
    :cond_1
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 310
    .restart local v0    # "diameter":I
    sub-int v5, v4, v0

    sub-int v6, v3, v0

    invoke-direct {p0, v5, v6}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->a(II)V

    goto :goto_0

    .line 322
    .restart local v2    # "halfWidth":F
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->n:I

    int-to-float v5, v5

    const v6, 0x3fb33333    # 1.4f

    mul-float v1, v5, v6

    .restart local v1    # "drawedWith":F
    goto :goto_1

    .line 325
    .end local v1    # "drawedWith":F
    :cond_3
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->n:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v1, v5, v6

    .restart local v1    # "drawedWith":F
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 343
    instance-of v3, p1, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 344
    check-cast v0, Landroid/os/Bundle;

    .line 345
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "progress"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->setProgress(F)V

    .line 346
    const-string v3, "marker_progress"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->setMarkerProgress(F)V

    .line 348
    const-string v3, "progress_color"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 349
    .local v2, "progressColor":I
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->y:I

    if-eq v2, v3, :cond_0

    .line 350
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->y:I

    .line 351
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->e()V

    .line 354
    :cond_0
    const-string v3, "progress_background_color"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 355
    .local v1, "progressBackgroundColor":I
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->x:I

    if-eq v1, v3, :cond_1

    .line 356
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->x:I

    .line 357
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->c()V

    .line 360
    :cond_1
    const-string v3, "thumb_visible"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->s:Z

    .line 362
    const-string v3, "marker_visible"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->r:Z

    .line 363
    const-string v3, "THUMB_TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->l:Ljava/lang/String;

    .line 365
    const-string v3, "saved_state"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 370
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "progressBackgroundColor":I
    .end local v2    # "progressColor":I
    :goto_0
    return-void

    .line 369
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 374
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_state"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 376
    const-string v1, "progress"

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->w:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 377
    const-string v1, "marker_progress"

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->u:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 378
    const-string v1, "progress_color"

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const-string v1, "progress_background_color"

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-string v1, "thumb_visible"

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->s:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    const-string v1, "marker_visible"

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->r:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    const-string v1, "THUMB_TEXT"

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-object v0
.end method

.method public setMarkerEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->r:Z

    .line 478
    return-void
.end method

.method public setMarkerProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->r:Z

    .line 404
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->u:F

    .line 405
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 422
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->w:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    .line 427
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->v:Z

    .line 428
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->w:F

    .line 440
    :goto_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->q:Z

    if-nez v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->invalidate()V

    goto :goto_0

    .line 431
    :cond_2
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_3

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->v:Z

    .line 437
    :goto_2
    rem-float v0, p1, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->w:F

    goto :goto_1

    .line 434
    :cond_3
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->v:Z

    goto :goto_2
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 502
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->x:I

    .line 504
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->d()V

    .line 505
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->c()V

    .line 506
    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 459
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->y:I

    .line 461
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->e()V

    .line 462
    return-void
.end method

.method public setProgressStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "progressStr"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->l:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setThumbEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->s:Z

    .line 494
    return-void
.end method

.method public setWheelSize(I)V
    .locals 0
    .param p1, "dimension"    # I

    .prologue
    .line 514
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->n:I

    .line 517
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->c()V

    .line 518
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->d()V

    .line 519
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/HoloCircularProgressBar;->e()V

    .line 520
    return-void
.end method
