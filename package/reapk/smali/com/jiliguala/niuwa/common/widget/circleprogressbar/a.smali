.class public Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$d;,
        Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$a;,
        Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;,
        Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field static final c:F = 3.0f

.field static final d:I = 0xc

.field static final e:I = 0x6

.field private static final g:Landroid/view/animation/Interpolator;

.field private static final h:Landroid/view/animation/Interpolator;

.field private static final i:Landroid/view/animation/Interpolator;

.field private static final j:Landroid/view/animation/Interpolator;

.field private static final k:I = 0x28

.field private static final l:F = 8.75f

.field private static final m:F = 2.5f

.field private static final n:I = 0x38

.field private static final o:F = 12.5f

.field private static final p:I = 0x535

.field private static final q:F = 5.0f

.field private static final r:I = 0xa

.field private static final s:I = 0x5

.field private static final t:F = 0.0f

.field private static final u:F = 0.8f


# instance fields
.field private A:Landroid/content/res/Resources;

.field private B:Landroid/view/View;

.field private C:Landroid/view/animation/Animation;

.field private D:F

.field private E:D

.field private F:D

.field private G:Z

.field f:Z

.field private final v:[I

.field private final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

.field private final y:Landroid/graphics/drawable/Drawable$Callback;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->g:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$a;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$a;-><init>(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->h:Landroid/view/animation/Interpolator;

    .line 63
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$d;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$d;-><init>(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->i:Landroid/view/animation/Interpolator;

    .line 64
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->j:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animExcutor"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 87
    new-array v0, v3, [I

    const/high16 v1, -0x1000000

    aput v1, v0, v2

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->v:[I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->w:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$1;-><init>(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->y:Landroid/graphics/drawable/Drawable$Callback;

    .line 123
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->G:Z

    .line 126
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->B:Landroid/view/View;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->A:Landroid/content/res/Resources;

    .line 129
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->y:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->v:[I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a([I)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(I)V

    .line 133
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->d()V

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    .prologue
    .line 50
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->D:F

    return v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;
    .param p1, "x1"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->D:F

    return p1
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->i:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private a(FLcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    .prologue
    .line 308
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->k()F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 309
    .local v2, "targetRotation":F
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->e()F

    move-result v3

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->f()F

    move-result v4

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->e()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 310
    .local v1, "startTrim":F
    invoke-virtual {p2, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b(F)V

    .line 311
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->k()F

    move-result v3

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->k()F

    move-result v4

    sub-float v4, v2, v4

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 312
    .local v0, "rotation":F
    invoke-virtual {p2, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->d(F)V

    .line 313
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;FLcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;
    .param p1, "x1"    # F
    .param p2, "x2"    # Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(FLcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;)V

    return-void
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->h:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private c()F
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->z:F

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 316
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    .line 317
    .local v1, "ring":Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$2;-><init>(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;)V

    .line 355
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 356
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 357
    sget-object v2, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 358
    new-instance v2, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;

    invoke-direct {v2, p0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;-><init>(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 386
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->C:Landroid/view/animation/Animation;

    .line 387
    return-void
.end method


# virtual methods
.method public a(DDDDFF)V
    .locals 5
    .param p1, "progressCircleWidth"    # D
    .param p3, "progressCircleHeight"    # D
    .param p5, "centerRadius"    # D
    .param p7, "strokeWidth"    # D
    .param p9, "arrowWidth"    # F
    .param p10, "arrowHeight"    # F

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    .line 139
    .local v0, "ring":Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->E:D

    .line 140
    iput-wide p3, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->F:D

    .line 141
    double-to-float v1, p7

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(F)V

    .line 142
    invoke-virtual {v0, p5, p6}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(D)V

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b(I)V

    .line 144
    invoke-virtual {v0, p9, p10}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(FF)V

    .line 145
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->E:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->F:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(II)V

    .line 146
    return-void
.end method

.method public a(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->e(F)V

    .line 181
    return-void
.end method

.method public a(FF)V
    .locals 1
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b(F)V

    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->c(F)V

    .line 193
    return-void
.end method

.method public a(I)V
    .locals 13
    .param p1, "size"    # I
        .annotation build Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$b;
        .end annotation
    .end param

    .prologue
    const/high16 v5, 0x42600000    # 56.0f

    const/high16 v4, 0x42200000    # 40.0f

    .line 155
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->A:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 156
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v12, v0, Landroid/util/DisplayMetrics;->density:F

    .line 158
    .local v12, "screenDensity":F
    if-nez p1, :cond_0

    .line 159
    mul-float v1, v5, v12

    float-to-double v2, v1

    mul-float v1, v5, v12

    float-to-double v4, v1

    const/high16 v1, 0x41480000    # 12.5f

    mul-float/2addr v1, v12

    float-to-double v6, v1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v12

    float-to-double v8, v1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v10, v1, v12

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v11, v1, v12

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(DDDDFF)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    mul-float v1, v4, v12

    float-to-double v2, v1

    mul-float v1, v4, v12

    float-to-double v4, v1

    const/high16 v1, 0x410c0000    # 8.75f

    mul-float/2addr v1, v12

    float-to-double v6, v1

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v1, v12

    float-to-double v8, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v10, v1, v12

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v11, v1, v12

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(DDDDFF)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(Z)V

    .line 173
    return-void
.end method

.method public varargs a([I)V
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a([I)V

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b(I)V

    .line 220
    return-void
.end method

.method public b(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->d(F)V

    .line 202
    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(I)V

    .line 209
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "showArrowOnFirstStart"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->G:Z

    .line 391
    return-void
.end method

.method c(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 262
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->z:F

    .line 263
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->invalidateSelf()V

    .line 264
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 235
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 236
    .local v1, "saveCount":I
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->z:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 237
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v2, p1, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 238
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 239
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->F:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->E:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->c(I)V

    .line 248
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(Landroid/graphics/ColorFilter;)V

    .line 253
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->l()V

    .line 280
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->G:Z

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(Z)V

    .line 283
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->g()F

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->f:Z

    .line 285
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->C:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 286
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 293
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b(I)V

    .line 289
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->m()V

    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->C:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x535

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->c(F)V

    .line 299
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(Z)V

    .line 300
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b(I)V

    .line 301
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->x:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->m()V

    .line 302
    return-void
.end method
