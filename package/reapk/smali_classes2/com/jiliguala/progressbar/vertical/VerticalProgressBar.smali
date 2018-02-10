.class public Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "saved_instance"

.field private static final b:Ljava/lang/String; = "text_color"

.field private static final c:Ljava/lang/String; = "text_size"

.field private static final d:Ljava/lang/String; = "vertical_progress_bar_height"

.field private static final e:Ljava/lang/String; = "vertical_progress_bar_color"

.field private static final f:Ljava/lang/String; = "vacant_bar_height"

.field private static final g:Ljava/lang/String; = "vacant_bar_color"

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

.field private H:F

.field private I:Ljava/lang/String;

.field private J:Landroid/graphics/Paint;

.field private K:Landroid/graphics/Paint;

.field private L:Landroid/graphics/Paint;

.field private M:Landroid/graphics/RectF;

.field private N:Landroid/graphics/RectF;

.field private O:F

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/progressbar/vertical/b;",
            ">;"
        }
    .end annotation
.end field

.field private T:I

.field private U:I

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
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 155
    sget v0, Lcom/jiliguala/progressbar/vertical/d$a;->VerticalProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
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

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->n:I

    .line 39
    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->o:I

    .line 40
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->p:I

    .line 45
    const/16 v2, 0x64

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->u:I

    .line 49
    iput v5, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->v:I

    .line 77
    const-string v2, "%"

    iput-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->C:Ljava/lang/String;

    .line 81
    const-string v2, ""

    iput-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->D:Ljava/lang/String;

    .line 122
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    .line 126
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    .line 136
    iput-boolean v6, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->P:Z

    .line 138
    iput-boolean v6, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->Q:Z

    .line 140
    iput-boolean v6, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->R:Z

    .line 161
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->a(F)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->s:F

    .line 162
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->a(F)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->t:F

    .line 163
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->b(F)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->r:F

    .line 164
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0, v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->a(F)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->q:F

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar:[I

    invoke-virtual {v2, p2, v3, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 172
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_vertical_progress_color:I

    iget v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->o:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->w:I

    .line 174
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_vacant_color:I

    iget v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->p:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->x:I

    .line 176
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_text_color:I

    iget v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->n:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->y:I

    .line 178
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_text_size:I

    iget v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->r:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->z:F

    .line 181
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_vertical_progress_bar_height:I

    iget v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->s:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->A:F

    .line 183
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_vacant_bar_height:I

    iget v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->t:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->B:F

    .line 185
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_text_offset:I

    iget v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->q:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->O:F

    .line 188
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_text_visibility:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 190
    .local v1, "textVisible":I
    if-eqz v1, :cond_0

    .line 191
    iput-boolean v5, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->R:Z

    .line 195
    :cond_0
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_rect_radius_x:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->T:I

    .line 197
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_rect_radius_y:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->U:I

    .line 200
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_current:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setProgress(F)V

    .line 202
    sget v2, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar_v_progress_max:I

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setMax(I)V

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-direct {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->a()V

    .line 207
    return-void
.end method

.method private a(IZ)I
    .locals 6
    .param p1, "measureSpec"    # I
    .param p2, "isWidth"    # Z

    .prologue
    .line 225
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 226
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 227
    .local v3, "size":I
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingRight()I

    move-result v5

    add-int v1, v4, v5

    .line 228
    .local v1, "padding":I
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_2

    .line 229
    move v2, v3

    .line 241
    .local v2, "result":I
    :cond_0
    :goto_1
    return v2

    .line 227
    .end local v1    # "padding":I
    .end local v2    # "result":I
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    goto :goto_0

    .line 231
    .restart local v1    # "padding":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getSuggestedMinimumWidth()I

    move-result v2

    .line 232
    .restart local v2    # "result":I
    :goto_2
    add-int/2addr v2, v1

    .line 233
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    .line 234
    if-eqz p2, :cond_4

    .line 235
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 231
    .end local v2    # "result":I
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getSuggestedMinimumHeight()I

    move-result v2

    goto :goto_2

    .line 237
    .restart local v2    # "result":I
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 269
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->J:Landroid/graphics/Paint;

    .line 270
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->K:Landroid/graphics/Paint;

    .line 273
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->L:Landroid/graphics/Paint;

    .line 276
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->z:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 278
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 282
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 283
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 284
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 286
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 287
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 288
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 289
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 290
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 294
    const-string v2, "%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->I:Ljava/lang/String;

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->I:Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->L:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->E:F

    .line 298
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 299
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->L:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->I:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->I:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 301
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v2

    if-nez v2, :cond_0

    .line 302
    iput-boolean v6, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->Q:Z

    .line 303
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->G:F

    .line 314
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->H:F

    .line 321
    iget v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->G:F

    iget v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->E:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->O:F

    add-float v1, v2, v3

    .line 322
    .local v1, "vacantBarStart":F
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    .line 323
    iput-boolean v6, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->P:Z

    .line 331
    :goto_1
    return-void

    .line 305
    .end local v1    # "vacantBarStart":F
    :cond_0
    iput-boolean v7, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->Q:Z

    .line 306
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 307
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 308
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 309
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 310
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->G:F

    goto :goto_0

    .line 325
    .restart local v1    # "vacantBarStart":F
    :cond_1
    iput-boolean v7, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->P:Z

    .line 326
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 327
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 328
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 329
    iget-object v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method


# virtual methods
.method public a(F)F
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 492
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method public b(F)F
    .locals 2
    .param p1, "sp"    # F

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 497
    .local v0, "scale":F
    mul-float v1, p1, v0

    return v1
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->u:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->v:I

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->z:F

    return v0
.end method

.method public getProgressTextVisibility()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->R:Z

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->C:Ljava/lang/String;

    return-object v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->z:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->y:I

    return v0
.end method

.method public getVacantBarColor()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->x:I

    return v0
.end method

.method public getVacantBarHeight()F
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->B:F

    return v0
.end method

.method public getVerticalProgressBarColor()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->w:I

    return v0
.end method

.method public getVerticalProgressBarHeight()F
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->A:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->R:Z

    if-eqz v0, :cond_3

    .line 247
    invoke-direct {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->c()V

    .line 252
    :goto_0
    iget-boolean v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->Q:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->N:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->T:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->U:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 256
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->P:Z

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->T:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->U:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 258
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->S:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->S:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->S:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/progressbar/vertical/b;

    iget-object v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->M:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/progressbar/vertical/b;->a(II)V

    .line 263
    :cond_1
    iget-boolean v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->R:Z

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->I:Ljava/lang/String;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->G:F

    iget v2, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->H:F

    iget-object v3, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 266
    :cond_2
    return-void

    .line 249
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->b()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->a(IZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->a(IZ)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setMeasuredDimension(II)V

    .line 221
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 470
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 471
    check-cast v0, Landroid/os/Bundle;

    .line 472
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->y:I

    .line 473
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->z:F

    .line 474
    const-string v1, "vertical_progress_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->A:F

    .line 475
    const-string v1, "vacant_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->B:F

    .line 476
    const-string v1, "vertical_progress_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->w:I

    .line 477
    const-string v1, "vacant_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->x:I

    .line 478
    invoke-direct {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->a()V

    .line 479
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setMax(I)V

    .line 480
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setProgress(F)V

    .line 481
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setPrefix(Ljava/lang/String;)V

    .line 482
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setSuffix(Ljava/lang/String;)V

    .line 483
    const-string v1, "text_visibility"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->Visible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->setProgressTextVisibility(Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;)V

    .line 484
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 488
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 483
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    sget-object v1, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->Invisible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    goto :goto_0

    .line 487
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 454
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgressTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 456
    const-string v1, "vertical_progress_bar_height"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getVerticalProgressBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 457
    const-string v1, "vacant_bar_height"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getVacantBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 458
    const-string v1, "vertical_progress_bar_color"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getVerticalProgressBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    const-string v1, "vacant_bar_color"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getVacantBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 462
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v1, "text_visibility"

    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getProgressTextVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    return-object v0
.end method

.method public setListener(Lcom/jiliguala/progressbar/vertical/b;)V
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/progressbar/vertical/b;

    .prologue
    .line 210
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->S:Ljava/lang/ref/WeakReference;

    .line 211
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 398
    if-lez p1, :cond_0

    .line 399
    iput p1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->u:I

    .line 400
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->invalidate()V

    .line 402
    :cond_0
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->D:Ljava/lang/String;

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->D:Ljava/lang/String;

    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 383
    float-to-int v0, p1

    iput v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->v:I

    .line 389
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->invalidate()V

    .line 391
    :cond_0
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->y:I

    .line 422
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->invalidate()V

    .line 424
    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 352
    iput p1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->z:F

    .line 353
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->z:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 354
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->invalidate()V

    .line 355
    return-void
.end method

.method public setProgressTextVisibility(Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;)V
    .locals 1
    .param p1, "visibility"    # Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    .prologue
    .line 505
    sget-object v0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;->Visible:Lcom/jiliguala/progressbar/vertical/VerticalProgressBar$ProgressTextVisibility;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->R:Z

    .line 506
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->invalidate()V

    .line 507
    return-void

    .line 505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 432
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->C:Ljava/lang/String;

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVacantBarColor(I)V
    .locals 2
    .param p1, "barColor"    # I

    .prologue
    .line 362
    iput p1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->x:I

    .line 363
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->invalidate()V

    .line 365
    return-void
.end method

.method public setVacantBarHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 417
    iput p1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->B:F

    .line 418
    return-void
.end method

.method public setVerticalProgressBarColor(I)V
    .locals 2
    .param p1, "progressColor"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->w:I

    .line 373
    iget-object v0, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    invoke-virtual {p0}, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->invalidate()V

    .line 375
    return-void
.end method

.method public setVerticalProgressBarHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 409
    iput p1, p0, Lcom/jiliguala/progressbar/vertical/VerticalProgressBar;->A:F

    .line 410
    return-void
.end method
