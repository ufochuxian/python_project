.class public Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar$ProgressTextVisibility;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "saved_instance"

.field private static final b:Ljava/lang/String; = "text_color"

.field private static final c:Ljava/lang/String; = "text_size"

.field private static final d:Ljava/lang/String; = "reached_bar_height"

.field private static final e:Ljava/lang/String; = "reached_bar_color"

.field private static final f:Ljava/lang/String; = "unreached_bar_height"

.field private static final g:Ljava/lang/String; = "unreached_bar_color"

.field private static final h:Ljava/lang/String; = "max"

.field private static final i:Ljava/lang/String; = "progress"

.field private static final j:Ljava/lang/String; = "suffix"

.field private static final k:Ljava/lang/String; = "prefix"

.field private static final l:Ljava/lang/String; = "text_visibility"

.field private static final m:I


# instance fields
.field private A:F

.field private B:F

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:F

.field private F:F

.field private G:F

.field private H:Ljava/lang/String;

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Paint;

.field private K:Landroid/graphics/Paint;

.field private L:Landroid/graphics/RectF;

.field private M:Landroid/graphics/RectF;

.field private N:F

.field private O:Z

.field private P:Z

.field private Q:Z

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:F

.field private final r:F

.field private final s:F

.field private final t:F

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    const v0, 0x7f040165

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v8, 0x42

    const/16 v7, 0xcc

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->n:I

    .line 35
    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->o:I

    .line 36
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->p:I

    .line 41
    const/16 v2, 0x64

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->u:I

    .line 45
    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->v:I

    .line 73
    const-string v2, "%"

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->C:Ljava/lang/String;

    .line 77
    const-string v2, ""

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->D:Ljava/lang/String;

    .line 114
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->L:Landroid/graphics/RectF;

    .line 118
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    .line 128
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->O:Z

    .line 130
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->P:Z

    .line 132
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->Q:Z

    .line 145
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->a(F)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->s:F

    .line 146
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->a(F)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->t:F

    .line 147
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->b(F)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->r:F

    .line 148
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->a(F)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->q:F

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/R$styleable;->NumberProgressBar:[I

    invoke-virtual {v2, p2, v3, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    .local v0, "attributes":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->o:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->w:I

    .line 154
    const/16 v2, 0x9

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->p:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->x:I

    .line 155
    const/4 v2, 0x4

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->n:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->y:I

    .line 156
    const/4 v2, 0x6

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->r:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->z:F

    .line 158
    const/4 v2, 0x2

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->s:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->A:F

    .line 159
    const/16 v2, 0x8

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->t:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->B:F

    .line 160
    const/4 v2, 0x5

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->q:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->N:F

    .line 162
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 163
    .local v1, "textVisible":I
    if-eqz v1, :cond_0

    .line 164
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->Q:Z

    .line 167
    :cond_0
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setProgress(I)V

    .line 168
    const/16 v2, 0x64

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setMax(I)V

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->a()V

    .line 172
    return-void
.end method

.method private a(IZ)I
    .locals 6
    .param p1, "measureSpec"    # I
    .param p2, "isWidth"    # Z

    .prologue
    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 192
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 193
    .local v3, "size":I
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingRight()I

    move-result v5

    add-int v1, v4, v5

    .line 194
    .local v1, "padding":I
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_2

    .line 195
    move v2, v3

    .line 207
    .local v2, "result":I
    :cond_0
    :goto_1
    return v2

    .line 193
    .end local v1    # "padding":I
    .end local v2    # "result":I
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    goto :goto_0

    .line 197
    .restart local v1    # "padding":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getSuggestedMinimumWidth()I

    move-result v2

    .line 198
    .restart local v2    # "result":I
    :goto_2
    add-int/2addr v2, v1

    .line 199
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    .line 200
    if-eqz p2, :cond_4

    .line 201
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 197
    .end local v2    # "result":I
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getSuggestedMinimumHeight()I

    move-result v2

    goto :goto_2

    .line 203
    .restart local v2    # "result":I
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->I:Landroid/graphics/Paint;

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->I:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->J:Landroid/graphics/Paint;

    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->K:Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->z:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 240
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->A:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 245
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 246
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->A:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->L:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 249
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 250
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->B:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->B:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 252
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 256
    const-string v1, "%d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getProgress()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getMax()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->H:Ljava/lang/String;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->H:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->K:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->E:F

    .line 260
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getProgress()I

    move-result v1

    if-nez v1, :cond_1

    .line 261
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->P:Z

    .line 262
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->F:F

    .line 273
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->K:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->K:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->G:F

    .line 275
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->F:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->E:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->E:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->F:F

    .line 277
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->F:F

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->N:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 280
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->F:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->E:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->N:F

    add-float v0, v1, v2

    .line 281
    .local v0, "unreachedBarStart":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 282
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->O:Z

    .line 290
    :goto_1
    return-void

    .line 264
    .end local v0    # "unreachedBarStart":F
    :cond_1
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->P:Z

    .line 265
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 266
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->A:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 267
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->N:F

    sub-float/2addr v2, v3

    .line 268
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 269
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->A:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 270
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->N:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->F:F

    goto/16 :goto_0

    .line 284
    .restart local v0    # "unreachedBarStart":F
    :cond_2
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->O:Z

    .line 285
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->L:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 286
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 287
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->B:F

    neg-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 288
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->B:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method


# virtual methods
.method public a(F)F
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getResources()Landroid/content/res/Resources;

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

.method public a(I)V
    .locals 1
    .param p1, "by"    # I

    .prologue
    .line 403
    if-lez p1, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getProgress()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setProgress(I)V

    .line 406
    :cond_0
    return-void
.end method

.method public b(F)F
    .locals 2
    .param p1, "sp"    # F

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 455
    .local v0, "scale":F
    mul-float v1, p1, v0

    return v1
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->u:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->v:I

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->z:F

    return v0
.end method

.method public getProgressTextVisibility()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->Q:Z

    return v0
.end method

.method public getReachedBarColor()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->w:I

    return v0
.end method

.method public getReachedBarHeight()F
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->A:F

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->C:Ljava/lang/String;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 181
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->z:F

    float-to-int v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->A:F

    float-to-int v1, v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->B:F

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
    .line 176
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->z:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->y:I

    return v0
.end method

.method public getUnreachedBarColor()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->x:I

    return v0
.end method

.method public getUnreachedBarHeight()F
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->B:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->Q:Z

    if-eqz v0, :cond_3

    .line 213
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->c()V

    .line 218
    :goto_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->P:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->M:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->O:Z

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->L:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 226
    :cond_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->Q:Z

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->H:Ljava/lang/String;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->F:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->G:F

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 228
    :cond_2
    return-void

    .line 215
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->b()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->a(IZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->a(IZ)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setMeasuredDimension(II)V

    .line 187
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 428
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 429
    check-cast v0, Landroid/os/Bundle;

    .line 430
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->y:I

    .line 431
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->z:F

    .line 432
    const-string v1, "reached_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->A:F

    .line 433
    const-string v1, "unreached_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->B:F

    .line 434
    const-string v1, "reached_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->w:I

    .line 435
    const-string v1, "unreached_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->x:I

    .line 436
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->a()V

    .line 437
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setMax(I)V

    .line 438
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setProgress(I)V

    .line 439
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setPrefix(Ljava/lang/String;)V

    .line 440
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setSuffix(Ljava/lang/String;)V

    .line 441
    const-string v1, "text_visibility"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar$ProgressTextVisibility;->Visible:Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar$ProgressTextVisibility;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->setProgressTextVisibility(Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar$ProgressTextVisibility;)V

    .line 442
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 446
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 441
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar$ProgressTextVisibility;->Invisible:Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar$ProgressTextVisibility;

    goto :goto_0

    .line 445
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getProgressTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 414
    const-string v1, "reached_bar_height"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getReachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 415
    const-string v1, "unreached_bar_height"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getUnreachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 416
    const-string v1, "reached_bar_color"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getReachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    const-string v1, "unreached_bar_color"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getUnreachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, "text_visibility"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getProgressTextVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 423
    return-object v0
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 350
    if-lez p1, :cond_0

    .line 351
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->u:I

    .line 352
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->invalidate()V

    .line 354
    :cond_0
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->D:Ljava/lang/String;

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->D:Ljava/lang/String;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->getMax()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 340
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->v:I

    .line 341
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->invalidate()V

    .line 343
    :cond_0
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    .prologue
    .line 373
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->y:I

    .line 374
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->invalidate()V

    .line 376
    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 309
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->z:F

    .line 310
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->z:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 311
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->invalidate()V

    .line 312
    return-void
.end method

.method public setProgressTextVisibility(Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar$ProgressTextVisibility;)V
    .locals 1
    .param p1, "visibility"    # Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar$ProgressTextVisibility;

    .prologue
    .line 463
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar$ProgressTextVisibility;->Visible:Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar$ProgressTextVisibility;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->Q:Z

    .line 464
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->invalidate()V

    .line 465
    return-void

    .line 463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReachedBarColor(I)V
    .locals 2
    .param p1, "progressColor"    # I

    .prologue
    .line 329
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->w:I

    .line 330
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->I:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->invalidate()V

    .line 332
    return-void
.end method

.method public setReachedBarHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 361
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->A:F

    .line 362
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->C:Ljava/lang/String;

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUnreachedBarColor(I)V
    .locals 2
    .param p1, "barColor"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->x:I

    .line 320
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->invalidate()V

    .line 322
    return-void
.end method

.method public setUnreachedBarHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 369
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/numberprogress/NumberProgressBar;->B:F

    .line 370
    return-void
.end method
