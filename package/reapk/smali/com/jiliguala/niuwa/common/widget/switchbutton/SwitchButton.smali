.class public Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$b;,
        Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;

.field private E:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private F:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private G:Z

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private final a:I

.field private final b:F

.field private final c:F

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/view/ViewParent;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/RectF;

.field private n:Landroid/graphics/PorterDuffXfermode;

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0xff

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->a:I

    .line 23
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->b:F

    .line 24
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->c:F

    .line 25
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->d:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->A:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private a(F)F
    .locals 2
    .param p1, "btnPos"    # F

    .prologue
    .line 264
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->w:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->f:Landroid/view/ViewParent;

    .line 253
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->f:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->f:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 256
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0803d5

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 76
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->e:Landroid/graphics/Paint;

    .line 77
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->e:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 81
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->y:I

    .line 82
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->z:I

    .line 85
    const v2, 0x7f0803d4

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->g:Landroid/graphics/Bitmap;

    .line 86
    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->i:Landroid/graphics/Bitmap;

    .line 87
    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->j:Landroid/graphics/Bitmap;

    .line 88
    const v2, 0x7f0803d6

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->k:Landroid/graphics/Bitmap;

    .line 89
    const v2, 0x7f0803d7

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->l:Landroid/graphics/Bitmap;

    .line 90
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->j:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->h:Landroid/graphics/Bitmap;

    .line 92
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->w:F

    .line 93
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->u:F

    .line 94
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->v:F

    .line 96
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->u:F

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->w:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->t:F

    .line 97
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->w:F

    div-float/2addr v2, v5

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->s:F

    .line 99
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->A:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->s:F

    :goto_0
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    .line 100
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->a(F)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->q:F

    .line 102
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 103
    .local v0, "density":F
    const/high16 v2, 0x43af0000    # 350.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->H:F

    .line 104
    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->I:F

    .line 106
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->I:F

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->I:F

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->m:Landroid/graphics/RectF;

    .line 107
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->n:Landroid/graphics/PorterDuffXfermode;

    .line 108
    return-void

    .line 99
    .end local v0    # "density":F
    :cond_0
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->t:F

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .param p1, "turnOn"    # Z

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->G:Z

    .line 293
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->H:F

    neg-float v0, v0

    :goto_0
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->K:F

    .line 294
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->J:F

    .line 296
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$b;-><init>(Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;)V

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$b;->run()V

    .line 297
    return-void

    .line 293
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->H:F

    goto :goto_0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->G:Z

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->G:Z

    .line 301
    return-void
.end method

.method private b(F)V
    .locals 1
    .param p1, "position"    # F

    .prologue
    .line 318
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    .line 319
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->a(F)F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->q:F

    .line 320
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->invalidate()V

    .line 321
    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 304
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->J:F

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->K:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->J:F

    .line 305
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->J:F

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->s:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->b()V

    .line 307
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->s:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->J:F

    .line 308
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->setCheckedDelayed(Z)V

    .line 314
    :cond_0
    :goto_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->J:F

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->b(F)V

    .line 315
    return-void

    .line 309
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->J:F

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->t:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->b()V

    .line 311
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->t:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->J:F

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->setCheckedDelayed(Z)V

    goto :goto_0
.end method

.method private setCheckedDelayed(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 163
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;-><init>(Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->A:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->m:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->d:I

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 272
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->l:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->I:F

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 273
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->n:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 276
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->g:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->q:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->I:F

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 277
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->k:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->I:F

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->h:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->q:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->I:F

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 284
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 288
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->u:F

    float-to-int v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->v:F

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->I:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->setMeasuredDimension(II)V

    .line 289
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 196
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 197
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 198
    .local v5, "y":F
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->p:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 199
    .local v1, "deltaX":F
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->o:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 200
    .local v2, "deltaY":F
    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->invalidate()V

    .line 238
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->isEnabled()Z

    move-result v6

    return v6

    .line 202
    :pswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->a()V

    .line 203
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->p:F

    .line 204
    iput v5, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->o:F

    .line 205
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->i:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->h:Landroid/graphics/Bitmap;

    .line 206
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->A:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->s:F

    :goto_1
    iput v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->x:F

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->t:F

    goto :goto_1

    .line 209
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v3, v8

    .line 210
    .local v3, "time":F
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->p:F

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    .line 211
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->t:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 212
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->t:F

    iput v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    .line 214
    :cond_2
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->s:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 215
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->s:F

    iput v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    .line 217
    :cond_3
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->t:F

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->s:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->s:F

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    :goto_2
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->C:Z

    .line 219
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->a(F)F

    move-result v6

    iput v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->q:F

    goto :goto_0

    :cond_4
    move v6, v7

    .line 217
    goto :goto_2

    .line 222
    .end local v3    # "time":F
    :pswitch_2
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->j:Landroid/graphics/Bitmap;

    iput-object v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->h:Landroid/graphics/Bitmap;

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v3, v8

    .line 224
    .restart local v3    # "time":F
    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->z:I

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_6

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->z:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-gez v8, :cond_6

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->y:I

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gez v8, :cond_6

    .line 225
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->D:Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;

    if-nez v6, :cond_5

    .line 226
    new-instance v6, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;-><init>(Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;)V

    iput-object v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->D:Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;

    .line 228
    :cond_5
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->D:Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->performClick()Z

    goto/16 :goto_0

    .line 232
    :cond_6
    iget-boolean v8, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->C:Z

    if-nez v8, :cond_7

    :goto_3
    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->a(Z)V

    goto/16 :goto_0

    :cond_7
    move v6, v7

    goto :goto_3

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 243
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->A:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->a(Z)V

    .line 244
    return v1

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->A:Z

    if-eq v0, p1, :cond_0

    .line 130
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->A:Z

    .line 132
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->s:F

    :goto_0
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    .line 133
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->r:F

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->a(F)F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->q:F

    .line 134
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->invalidate()V

    .line 138
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->B:Z

    if-eqz v0, :cond_2

    .line 152
    :cond_0
    :goto_1
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->t:F

    goto :goto_0

    .line 142
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->B:Z

    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->E:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->E:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->A:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->F:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->F:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->A:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 150
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->B:Z

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 112
    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->d:I

    .line 113
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 114
    return-void

    .line 112
    :cond_0
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->E:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 180
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->F:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 191
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->setChecked(Z)V

    .line 156
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
