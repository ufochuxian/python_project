.class public Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "saved_instance"

.field private static final c:Ljava/lang/String; = "text_color"

.field private static final d:Ljava/lang/String; = "text_size"

.field private static final e:Ljava/lang/String; = "front_bar_height"

.field private static final f:Ljava/lang/String; = "front_bar_color"

.field private static final g:Ljava/lang/String; = "bg_bar_height"

.field private static final h:Ljava/lang/String; = "bg_bar_color"

.field private static final i:Ljava/lang/String; = "max"

.field private static final j:Ljava/lang/String; = "progress"

.field private static final k:Ljava/lang/String; = "suffix"

.field private static final l:Ljava/lang/String; = "prefix"

.field private static final m:Ljava/lang/String; = "text_visibility"

.field private static final n:I


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private D:F

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Landroid/graphics/Paint;

.field private H:Landroid/graphics/Paint;

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Paint;

.field private K:Landroid/graphics/RectF;

.field private L:Landroid/graphics/RectF;

.field private M:Landroid/graphics/RectF;

.field private N:F

.field private O:Z

.field private P:Z

.field private Q:Lcom/jiliguala/niuwa/common/widget/numberprogress/a;

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:F

.field private final s:F

.field private final t:F

.field private final u:F

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    const/high16 v0, 0x7f040000

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v7, 0x42

    const/16 v6, 0xcc

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/16 v1, 0x91

    const/16 v2, 0xf1

    invoke-static {v7, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->o:I

    .line 40
    const/16 v1, 0x91

    const/16 v2, 0xf1

    invoke-static {v7, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->p:I

    .line 41
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->q:I

    .line 46
    const/16 v1, 0x64

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->v:I

    .line 50
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->w:I

    .line 79
    const-string v1, "%"

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->E:Ljava/lang/String;

    .line 83
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->F:Ljava/lang/String;

    .line 102
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->K:Landroid/graphics/RectF;

    .line 106
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->L:Landroid/graphics/RectF;

    .line 111
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->M:Landroid/graphics/RectF;

    .line 121
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->O:Z

    .line 123
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->P:Z

    .line 141
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->a(F)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->t:F

    .line 142
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->a(F)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->u:F

    .line 143
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->b(F)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->s:F

    .line 144
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->a(F)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->r:F

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/R$styleable;->TwoWayLoadingProgress:[I

    invoke-virtual {v1, p2, v2, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, "attributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->x:I

    .line 150
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->q:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->y:I

    .line 151
    const/4 v1, 0x7

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->z:I

    .line 152
    const/16 v1, 0x8

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->A:I

    .line 153
    const/16 v1, 0xa

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->s:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->B:F

    .line 155
    const/4 v1, 0x4

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->t:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->C:F

    .line 156
    const/4 v1, 0x2

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->u:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->D:F

    .line 157
    const/16 v1, 0x9

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->r:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->N:F

    .line 159
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setProgress(I)V

    .line 160
    const/4 v1, 0x6

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setMax(I)V

    .line 162
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->b()V

    .line 164
    return-void
.end method

.method private a(IZ)I
    .locals 6
    .param p1, "measureSpec"    # I
    .param p2, "isWidth"    # Z

    .prologue
    .line 183
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 184
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 185
    .local v3, "size":I
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingRight()I

    move-result v5

    add-int v1, v4, v5

    .line 186
    .local v1, "padding":I
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_2

    .line 187
    move v2, v3

    .line 199
    .local v2, "result":I
    :cond_0
    :goto_1
    return v2

    .line 185
    .end local v1    # "padding":I
    .end local v2    # "result":I
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    goto :goto_0

    .line 189
    .restart local v1    # "padding":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getSuggestedMinimumWidth()I

    move-result v2

    .line 190
    .restart local v2    # "result":I
    :goto_2
    add-int/2addr v2, v1

    .line 191
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    .line 192
    if-eqz p2, :cond_4

    .line 193
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 189
    .end local v2    # "result":I
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getSuggestedMinimumHeight()I

    move-result v2

    goto :goto_2

    .line 195
    .restart local v2    # "result":I
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 216
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->G:Landroid/graphics/Paint;

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->G:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->H:Landroid/graphics/Paint;

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->H:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->I:Landroid/graphics/Paint;

    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->I:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->J:Landroid/graphics/Paint;

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->B:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 232
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 234
    .local v0, "halfTotalWidth":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getProgress()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 236
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getProgress()I

    move-result v2

    if-nez v2, :cond_1

    .line 237
    iput-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->P:Z

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->L:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->L:Landroid/graphics/RectF;

    iget v1, v2, Landroid/graphics/RectF;->right:F

    .line 263
    .local v1, "leftBarStart":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    .line 264
    iput-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->O:Z

    .line 274
    :goto_1
    return-void

    .line 239
    .end local v1    # "leftBarStart":F
    :cond_1
    iput-boolean v9, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->P:Z

    .line 240
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 242
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->C:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 243
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->L:Landroid/graphics/RectF;

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getMax()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getProgress()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 244
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 248
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->M:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->C:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 253
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 254
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 266
    .restart local v1    # "leftBarStart":F
    :cond_3
    iput-boolean v9, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->O:Z

    .line 267
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->K:Landroid/graphics/RectF;

    iput v1, v2, Landroid/graphics/RectF;->left:F

    .line 270
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->K:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->M:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 271
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->K:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->D:F

    neg-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 272
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->K:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method


# virtual methods
.method public a(F)F
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 450
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method public a(FII)I
    .locals 10
    .param p1, "delta"    # F
    .param p2, "startColor"    # I
    .param p3, "endColor"    # I

    .prologue
    .line 473
    shr-int/lit8 v4, p2, 0x18

    .line 474
    .local v4, "startA":I
    shr-int/lit8 v8, p2, 0x10

    and-int/lit16 v7, v8, 0xff

    .line 475
    .local v7, "startR":I
    shr-int/lit8 v8, p2, 0x8

    and-int/lit16 v6, v8, 0xff

    .line 476
    .local v6, "startG":I
    and-int/lit16 v5, p2, 0xff

    .line 478
    .local v5, "startB":I
    shr-int/lit8 v0, p3, 0x18

    .line 479
    .local v0, "endA":I
    shr-int/lit8 v8, p3, 0x10

    and-int/lit16 v3, v8, 0xff

    .line 480
    .local v3, "endR":I
    shr-int/lit8 v8, p3, 0x8

    and-int/lit16 v2, v8, 0xff

    .line 481
    .local v2, "endG":I
    and-int/lit16 v1, p3, 0xff

    .line 483
    .local v1, "endB":I
    sub-int v8, v0, v4

    int-to-float v8, v8

    mul-float/2addr v8, p1

    float-to-int v8, v8

    add-int/2addr v8, v4

    shl-int/lit8 v8, v8, 0x18

    sub-int v9, v3, v7

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v9, v9

    add-int/2addr v9, v7

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    sub-int v9, v2, v6

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v9, v9

    add-int/2addr v9, v6

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    sub-int v9, v1, v5

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v9, v9

    add-int/2addr v9, v5

    or-int/2addr v8, v9

    return v8
.end method

.method public a()V
    .locals 4

    .prologue
    .line 463
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->I:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 464
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getProgress()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const-string v2, "#FFAB0A"

    .line 465
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#FE4D4D"

    .line 466
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 464
    invoke-virtual {p0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->a(FII)I

    move-result v0

    .line 468
    .local v0, "graditentColor":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->I:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    .end local v0    # "graditentColor":I
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "by"    # I

    .prologue
    .line 401
    if-lez p1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getProgress()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setProgress(I)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->Q:Lcom/jiliguala/niuwa/common/widget/numberprogress/a;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->Q:Lcom/jiliguala/niuwa/common/widget/numberprogress/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getMax()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/a;->a(II)V

    .line 408
    :cond_1
    return-void
.end method

.method public b(F)F
    .locals 2
    .param p1, "sp"    # F

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 455
    .local v0, "scale":F
    mul-float v1, p1, v0

    return v1
.end method

.method public getBgBarColor()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->y:I

    return v0
.end method

.method public getBgBarHeight()F
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->D:F

    return v0
.end method

.method public getFrontBarHeight()F
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->C:F

    return v0
.end method

.method public getLeftBarColor()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->x:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->v:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->w:I

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->B:F

    return v0
.end method

.method public getRightBarColor()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->z:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->E:Ljava/lang/String;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 173
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->B:F

    float-to-int v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->C:F

    float-to-int v1, v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->D:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->B:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->A:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->c()V

    .line 205
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->P:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->L:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->M:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 210
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->O:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->K:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 213
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->a(IZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->a(IZ)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setMeasuredDimension(II)V

    .line 179
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 429
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 430
    check-cast v0, Landroid/os/Bundle;

    .line 431
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->A:I

    .line 432
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->B:F

    .line 433
    const-string v1, "front_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->C:F

    .line 434
    const-string v1, "bg_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->D:F

    .line 435
    const-string v1, "front_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->x:I

    .line 436
    const-string v1, "bg_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->y:I

    .line 437
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->b()V

    .line 438
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setMax(I)V

    .line 439
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setProgress(I)V

    .line 440
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setPrefix(Ljava/lang/String;)V

    .line 441
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setSuffix(Ljava/lang/String;)V

    .line 442
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 446
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 414
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getProgressTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 416
    const-string v1, "front_bar_height"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getFrontBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 417
    const-string v1, "bg_bar_height"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getBgBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 418
    const-string v1, "front_bar_color"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getLeftBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    const-string v1, "bg_bar_color"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getBgBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-object v0
.end method

.method public setBgBarColor(I)V
    .locals 1
    .param p1, "bgBarColor"    # I

    .prologue
    .line 305
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->y:I

    .line 306
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->invalidate()V

    .line 308
    return-void
.end method

.method public setBgBarHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 356
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->D:F

    .line 357
    return-void
.end method

.method public setFrontBarHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 348
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->C:F

    .line 349
    return-void
.end method

.method public setLeftBarColor(I)V
    .locals 2
    .param p1, "leftBarColor"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->x:I

    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->G:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->invalidate()V

    .line 318
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 337
    if-lez p1, :cond_0

    .line 338
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->v:I

    .line 339
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->invalidate()V

    .line 341
    :cond_0
    return-void
.end method

.method public setOnProgressBarListener(Lcom/jiliguala/niuwa/common/widget/numberprogress/a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/numberprogress/a;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->Q:Lcom/jiliguala/niuwa/common/widget/numberprogress/a;

    .line 460
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->F:Ljava/lang/String;

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->F:Ljava/lang/String;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getMax()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 326
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->w:I

    .line 327
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->a()V

    .line 328
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->invalidate()V

    .line 330
    :cond_0
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->A:I

    .line 361
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->invalidate()V

    .line 363
    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 295
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->B:F

    .line 296
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->B:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 297
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->invalidate()V

    .line 298
    return-void
.end method

.method public setRightBarColor(I)V
    .locals 1
    .param p1, "rightBarColor"    # I

    .prologue
    .line 370
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->z:I

    .line 371
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->invalidate()V

    .line 373
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->E:Ljava/lang/String;

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->E:Ljava/lang/String;

    goto :goto_0
.end method
