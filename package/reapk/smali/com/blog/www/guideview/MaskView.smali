.class Lcom/blog/www/guideview/MaskView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blog/www/guideview/MaskView$a;,
        Lcom/blog/www/guideview/MaskView$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MaskView"


# instance fields
.field private A:I

.field private b:Lcom/blog/www/guideview/MaskView$a;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Canvas;

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/blog/www/guideview/MaskView;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/blog/www/guideview/MaskView;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/blog/www/guideview/MaskView;->d:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/blog/www/guideview/MaskView;->f:Landroid/graphics/Paint;

    .line 38
    iput v1, p0, Lcom/blog/www/guideview/MaskView;->g:I

    .line 39
    iput v1, p0, Lcom/blog/www/guideview/MaskView;->h:I

    .line 40
    iput v1, p0, Lcom/blog/www/guideview/MaskView;->i:I

    .line 41
    iput v1, p0, Lcom/blog/www/guideview/MaskView;->j:I

    .line 42
    iput v1, p0, Lcom/blog/www/guideview/MaskView;->k:I

    .line 45
    iput v1, p0, Lcom/blog/www/guideview/MaskView;->n:I

    .line 46
    iput v1, p0, Lcom/blog/www/guideview/MaskView;->o:I

    .line 71
    invoke-virtual {p0, v1}, Lcom/blog/www/guideview/MaskView;->setWillNotDraw(Z)V

    .line 72
    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/RectF;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "targetParentPosition"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 189
    sparse-switch p3, :sswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 191
    :sswitch_0
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 192
    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 195
    :sswitch_1
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 196
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 197
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 200
    :sswitch_2
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 201
    iget v0, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Landroid/view/View;Landroid/graphics/RectF;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "targetParentPosition"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 207
    sparse-switch p3, :sswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 209
    :sswitch_0
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 210
    iget v0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 213
    :sswitch_1
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 214
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 215
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 218
    :sswitch_2
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 219
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method private d()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/blog/www/guideview/MaskView;->e()V

    .line 226
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 232
    iget v0, p0, Lcom/blog/www/guideview/MaskView;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/blog/www/guideview/MaskView;->h:I

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/blog/www/guideview/MaskView;->g:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 235
    :cond_0
    iget v0, p0, Lcom/blog/www/guideview/MaskView;->g:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/blog/www/guideview/MaskView;->i:I

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/blog/www/guideview/MaskView;->g:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 238
    :cond_1
    iget v0, p0, Lcom/blog/www/guideview/MaskView;->g:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/blog/www/guideview/MaskView;->j:I

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/blog/www/guideview/MaskView;->g:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 241
    :cond_2
    iget v0, p0, Lcom/blog/www/guideview/MaskView;->g:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/blog/www/guideview/MaskView;->k:I

    if-nez v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/blog/www/guideview/MaskView;->g:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 244
    :cond_3
    iget v0, p0, Lcom/blog/www/guideview/MaskView;->h:I

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/blog/www/guideview/MaskView;->h:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 247
    :cond_4
    iget v0, p0, Lcom/blog/www/guideview/MaskView;->i:I

    if-eqz v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/blog/www/guideview/MaskView;->i:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 250
    :cond_5
    iget v0, p0, Lcom/blog/www/guideview/MaskView;->j:I

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/blog/www/guideview/MaskView;->j:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 253
    :cond_6
    iget v0, p0, Lcom/blog/www/guideview/MaskView;->k:I

    if-eqz v0, :cond_7

    .line 254
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/blog/www/guideview/MaskView;->k:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 256
    :cond_7
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 76
    .local v0, "size":Landroid/graphics/Point;
    iget v1, p0, Lcom/blog/www/guideview/MaskView;->z:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 77
    iget v1, p0, Lcom/blog/www/guideview/MaskView;->A:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 78
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/blog/www/guideview/MaskView;->q:Landroid/graphics/Bitmap;

    .line 79
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/blog/www/guideview/MaskView;->q:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/blog/www/guideview/MaskView;->r:Landroid/graphics/Canvas;

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/blog/www/guideview/MaskView;->s:Landroid/graphics/Paint;

    .line 82
    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->s:Landroid/graphics/Paint;

    const/high16 v2, -0x34000000    # -3.3554432E7f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/blog/www/guideview/MaskView;->t:Landroid/graphics/Paint;

    .line 84
    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->t:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->t:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/blog/www/guideview/MaskView;->p:Landroid/graphics/Paint;

    .line 88
    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->p:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->p:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->p:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 91
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/blog/www/guideview/MaskView;->y:I

    .line 92
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->invalidate()V

    .line 312
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 298
    invoke-direct {p0}, Lcom/blog/www/guideview/MaskView;->d()V

    .line 299
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->invalidate()V

    .line 300
    return-void
.end method

.method public a(Lcom/blog/www/guideview/MaskView$a;)V
    .locals 0
    .param p1, "callBack"    # Lcom/blog/www/guideview/MaskView$a;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/blog/www/guideview/MaskView;->b:Lcom/blog/www/guideview/MaskView$a;

    .line 131
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/blog/www/guideview/MaskView;->m:Z

    .line 329
    return-void
.end method

.method protected b()Lcom/blog/www/guideview/MaskView$b;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 259
    new-instance v0, Lcom/blog/www/guideview/MaskView$b;

    invoke-direct {v0, v1, v1}, Lcom/blog/www/guideview/MaskView$b;-><init>(II)V

    return-object v0
.end method

.method public b(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->invalidate()V

    .line 317
    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 304
    invoke-direct {p0}, Lcom/blog/www/guideview/MaskView;->d()V

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blog/www/guideview/MaskView;->l:Z

    .line 306
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->invalidate()V

    .line 307
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blog/www/guideview/MaskView;->b:Lcom/blog/www/guideview/MaskView$a;

    .line 437
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "corner"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/blog/www/guideview/MaskView;->n:I

    .line 321
    return-void
.end method

.method public d(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/blog/www/guideview/MaskView;->o:I

    .line 325
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->getDrawingTime()J

    move-result-wide v2

    .line 266
    .local v2, "drawingTime":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 267
    invoke-virtual {p0, v1}, Lcom/blog/www/guideview/MaskView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/blog/www/guideview/MaskView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "child":Landroid/view/View;
    :catch_0
    move-exception v4

    .line 273
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 332
    iput p1, p0, Lcom/blog/www/guideview/MaskView;->g:I

    .line 333
    return-void
.end method

.method public f(I)V
    .locals 0
    .param p1, "paddingLeft"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/blog/www/guideview/MaskView;->h:I

    .line 337
    return-void
.end method

.method public g(I)V
    .locals 0
    .param p1, "paddingTop"    # I

    .prologue
    .line 340
    iput p1, p0, Lcom/blog/www/guideview/MaskView;->i:I

    .line 341
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->b()Lcom/blog/www/guideview/MaskView$b;

    move-result-object v0

    return-object v0
.end method

.method public h(I)V
    .locals 0
    .param p1, "paddingRight"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/blog/www/guideview/MaskView;->j:I

    .line 345
    return-void
.end method

.method public i(I)V
    .locals 0
    .param p1, "paddingBottom"    # I

    .prologue
    .line 348
    iput p1, p0, Lcom/blog/www/guideview/MaskView;->k:I

    .line 349
    return-void
.end method

.method public j(I)V
    .locals 0
    .param p1, "screenWidth"    # I

    .prologue
    .line 352
    iput p1, p0, Lcom/blog/www/guideview/MaskView;->z:I

    .line 353
    return-void
.end method

.method public k(I)V
    .locals 0
    .param p1, "screenHeight"    # I

    .prologue
    .line 356
    iput p1, p0, Lcom/blog/www/guideview/MaskView;->A:I

    .line 357
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->clearFocus()V

    .line 98
    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->r:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/blog/www/guideview/MaskView;->q:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 277
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->q:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 278
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->r:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 279
    iget-boolean v0, p0, Lcom/blog/www/guideview/MaskView;->m:Z

    if-nez v0, :cond_0

    .line 280
    iget v0, p0, Lcom/blog/www/guideview/MaskView;->o:I

    packed-switch v0, :pswitch_data_0

    .line 289
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->r:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v2, p0, Lcom/blog/www/guideview/MaskView;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/blog/www/guideview/MaskView;->n:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/blog/www/guideview/MaskView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->q:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 294
    :cond_0
    return-void

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->r:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v2, p0, Lcom/blog/www/guideview/MaskView;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/blog/www/guideview/MaskView;->n:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/blog/www/guideview/MaskView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v0, p0, Lcom/blog/www/guideview/MaskView;->r:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 286
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/blog/www/guideview/MaskView;->p:Landroid/graphics/Paint;

    .line 285
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->getChildCount()I

    move-result v1

    .line 135
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 137
    .local v2, "density":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 138
    invoke-virtual {p0, v3}, Lcom/blog/www/guideview/MaskView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/blog/www/guideview/MaskView$b;

    .line 143
    .local v4, "lp":Lcom/blog/www/guideview/MaskView$b;
    if-eqz v4, :cond_0

    .line 146
    iget v5, v4, Lcom/blog/www/guideview/MaskView$b;->j:I

    sparse-switch v5, :sswitch_data_0

    .line 178
    :goto_2
    iget v5, v4, Lcom/blog/www/guideview/MaskView$b;->j:I

    const/16 v6, 0x31

    if-eq v5, v6, :cond_0

    .line 180
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v6, v4, Lcom/blog/www/guideview/MaskView$b;->l:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    iget v7, v4, Lcom/blog/www/guideview/MaskView$b;->m:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 182
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 148
    :sswitch_0
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 149
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 150
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v6, v4, Lcom/blog/www/guideview/MaskView$b;->k:I

    invoke-direct {p0, v0, v5, v6}, Lcom/blog/www/guideview/MaskView;->b(Landroid/view/View;Landroid/graphics/RectF;I)V

    goto :goto_2

    .line 153
    :sswitch_1
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 154
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 155
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v6, v4, Lcom/blog/www/guideview/MaskView$b;->k:I

    invoke-direct {p0, v0, v5, v6}, Lcom/blog/www/guideview/MaskView;->a(Landroid/view/View;Landroid/graphics/RectF;I)V

    goto :goto_2

    .line 158
    :sswitch_2
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 159
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 160
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v6, v4, Lcom/blog/www/guideview/MaskView$b;->k:I

    invoke-direct {p0, v0, v5, v6}, Lcom/blog/www/guideview/MaskView;->b(Landroid/view/View;Landroid/graphics/RectF;I)V

    goto/16 :goto_2

    .line 163
    :sswitch_3
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 164
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 165
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget v6, v4, Lcom/blog/www/guideview/MaskView$b;->k:I

    invoke-direct {p0, v0, v5, v6}, Lcom/blog/www/guideview/MaskView;->a(Landroid/view/View;Landroid/graphics/RectF;I)V

    goto/16 :goto_2

    .line 168
    :sswitch_4
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 169
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 170
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 171
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 172
    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->e:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_2

    .line 175
    :sswitch_5
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 186
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/blog/www/guideview/MaskView$b;
    :cond_2
    return-void

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x31 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, -0x80000000

    const/4 v9, 0x0

    .line 106
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 108
    .local v5, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 109
    .local v2, "h":I
    invoke-virtual {p0, v5, v2}, Lcom/blog/www/guideview/MaskView;->setMeasuredDimension(II)V

    .line 110
    iget-boolean v6, p0, Lcom/blog/www/guideview/MaskView;->l:Z

    if-nez v6, :cond_0

    .line 111
    iget-object v6, p0, Lcom/blog/www/guideview/MaskView;->d:Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v2

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    invoke-direct {p0}, Lcom/blog/www/guideview/MaskView;->d()V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/blog/www/guideview/MaskView;->getChildCount()I

    move-result v1

    .line 117
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 118
    invoke-virtual {p0, v3}, Lcom/blog/www/guideview/MaskView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/blog/www/guideview/MaskView$b;

    .line 121
    .local v4, "lp":Lcom/blog/www/guideview/MaskView$b;
    if-nez v4, :cond_1

    .line 122
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_1
    add-int v6, v5, v10

    add-int v7, v2, v10

    invoke-virtual {p0, v0, v6, v7}, Lcom/blog/www/guideview/MaskView;->measureChild(Landroid/view/View;II)V

    .line 117
    .end local v4    # "lp":Lcom/blog/www/guideview/MaskView$b;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 427
    :cond_0
    :goto_0
    return v2

    .line 407
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/blog/www/guideview/MaskView;->u:F

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/blog/www/guideview/MaskView;->v:F

    .line 410
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/blog/www/guideview/MaskView;->w:F

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/blog/www/guideview/MaskView;->x:F

    .line 413
    iget-object v3, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v4, p0, Lcom/blog/www/guideview/MaskView;->u:F

    iget v5, p0, Lcom/blog/www/guideview/MaskView;->v:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    iget v4, p0, Lcom/blog/www/guideview/MaskView;->w:F

    iget v5, p0, Lcom/blog/www/guideview/MaskView;->x:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    iget v3, p0, Lcom/blog/www/guideview/MaskView;->u:F

    iget v4, p0, Lcom/blog/www/guideview/MaskView;->w:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 415
    .local v0, "xInstance":F
    iget v3, p0, Lcom/blog/www/guideview/MaskView;->v:F

    iget v4, p0, Lcom/blog/www/guideview/MaskView;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 416
    .local v1, "yInstance":F
    const-string v3, "MASKVIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTargetRect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/blog/www/guideview/MaskView;->c:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownRawX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/blog/www/guideview/MaskView;->u:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownRawY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/blog/www/guideview/MaskView;->v:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mUpRawX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/blog/www/guideview/MaskView;->w:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mUpRawY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/blog/www/guideview/MaskView;->x:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v3, "MASKVIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xInstance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",yInstance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mScaledTouchSlop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/blog/www/guideview/MaskView;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget v3, p0, Lcom/blog/www/guideview/MaskView;->y:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    iget v3, p0, Lcom/blog/www/guideview/MaskView;->y:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/blog/www/guideview/MaskView;->b:Lcom/blog/www/guideview/MaskView$a;

    if-eqz v3, :cond_0

    .line 420
    iget-object v2, p0, Lcom/blog/www/guideview/MaskView;->b:Lcom/blog/www/guideview/MaskView$a;

    invoke-interface {v2}, Lcom/blog/www/guideview/MaskView$a;->b()V

    .line 421
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
