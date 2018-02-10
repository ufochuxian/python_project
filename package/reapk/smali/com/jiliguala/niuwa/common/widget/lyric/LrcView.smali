.class public Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/jiliguala/niuwa/common/widget/lyric/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$a;,
        Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$b;
    }
.end annotation


# static fields
.field public static final a:F = 1.5f

.field public static final b:F = 0.5f

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String; = ""

.field private static final f:F

.field private static final g:F

.field private static final h:I = -0x1

.field private static final i:F

.field private static final j:I = -0x1

.field private static final k:F = 1.0f

.field private static final l:I = 0x5dc

.field private static final m:I = 0x190

.field private static n:F


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:F

.field private E:F

.field private F:F

.field private G:I

.field private H:I

.field private I:Lcom/nineoldandroids/a/q;

.field private J:F

.field private K:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$b;

.field private L:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$a;

.field private M:Z

.field c:Lcom/nineoldandroids/a/q$b;

.field private o:F

.field private p:I

.field private q:F

.field private r:I

.field private s:F

.field private t:F

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Paint;

.field private x:Z

.field private y:Landroid/widget/Scroller;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7f07007c

    .line 43
    const-class v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->d:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->f:F

    .line 56
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->g:F

    .line 65
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->i:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 195
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    sget v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->g:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->o:F

    .line 101
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->p:I

    .line 105
    sget v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->i:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    .line 109
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->r:I

    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->s:F

    .line 137
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->x:Z

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->z:F

    .line 151
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->C:Z

    .line 164
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    .line 168
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->H:I

    .line 180
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$1;-><init>(Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->c:Lcom/nineoldandroids/a/q$b;

    .line 196
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->a()V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 200
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    sget v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->g:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->o:F

    .line 101
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->p:I

    .line 105
    sget v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->i:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    .line 109
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->r:I

    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->s:F

    .line 137
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->x:Z

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->z:F

    .line 151
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->C:Z

    .line 164
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    .line 168
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->H:I

    .line 180
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$1;-><init>(Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->c:Lcom/nineoldandroids/a/q$b;

    .line 201
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->a()V

    .line 202
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->J:F

    return p1
.end method

.method private a(FJ)V
    .locals 6
    .param p1, "endX"    # F
    .param p2, "duration"    # J

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->I:Lcom/nineoldandroids/a/q;

    if-nez v0, :cond_0

    .line 504
    new-array v0, v1, [F

    aput v2, v0, v3

    aput p1, v0, v4

    invoke-static {v0}, Lcom/nineoldandroids/a/q;->b([F)Lcom/nineoldandroids/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->I:Lcom/nineoldandroids/a/q;

    .line 505
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->I:Lcom/nineoldandroids/a/q;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->c:Lcom/nineoldandroids/a/q$b;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a(Lcom/nineoldandroids/a/q$b;)V

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->I:Lcom/nineoldandroids/a/q;

    invoke-virtual {v0, p2, p3}, Lcom/nineoldandroids/a/q;->d(J)Lcom/nineoldandroids/a/q;

    .line 512
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->I:Lcom/nineoldandroids/a/q;

    long-to-double v2, p2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/q;->a(J)V

    .line 513
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->I:Lcom/nineoldandroids/a/q;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/q;->a()V

    .line 514
    return-void

    .line 507
    :cond_0
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->J:F

    .line 508
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->I:Lcom/nineoldandroids/a/q;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/q;->b()V

    .line 509
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->I:Lcom/nineoldandroids/a/q;

    new-array v1, v1, [F

    aput v2, v1, v3

    aput p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a([F)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 6
    .param p1, "dstY"    # I
    .param p2, "duration"    # I

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollY()I

    move-result v2

    .line 562
    .local v2, "oldScrollY":I
    sub-int v4, p1, v2

    .line 563
    .local v4, "offset":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollX()I

    move-result v3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 564
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->invalidate()V

    .line 565
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getHeight()I

    move-result v0

    .line 268
    .local v0, "height":I
    int-to-float v1, v0

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->B:I

    .line 269
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 274
    :goto_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 275
    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->I:Lcom/nineoldandroids/a/q;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->I:Lcom/nineoldandroids/a/q;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/q;->b()V

    .line 523
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->J:F

    .line 524
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->n:F

    .line 211
    sget v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->n:F

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    .line 213
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->v:Landroid/graphics/Paint;

    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->o:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 240
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->A:I

    .line 241
    return-void
.end method

.method public a(IZZ)V
    .locals 8
    .param p1, "progress"    # I
    .param p2, "fromSeekBar"    # Z
    .param p3, "fromSeekBarByUser"    # Z

    .prologue
    const/4 v6, 0x1

    .line 455
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->C:Z

    if-nez v2, :cond_0

    .line 462
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 464
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c()I

    move-result v2

    if-lt p1, v2, :cond_7

    .line 465
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    if-eq v2, v0, :cond_0

    .line 466
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->H:I

    .line 467
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    .line 469
    if-eqz p3, :cond_6

    .line 470
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 471
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    invoke-virtual {v2, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 473
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->scrollTo(II)V

    .line 478
    :goto_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->v:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 480
    .local v1, "textWidth":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    .line 481
    if-eqz p3, :cond_4

    .line 482
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    invoke-virtual {v2, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 485
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v2, v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->a()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-direct {p0, v3, v4, v5}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->a(FJ)V

    .line 487
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->invalidate()V

    goto/16 :goto_0

    .line 475
    .end local v1    # "textWidth":F
    :cond_6
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    int-to-float v2, v2

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0x5dc

    invoke-direct {p0, v2, v3}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->a(II)V

    goto :goto_2

    .line 462
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 547
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 550
    :cond_0
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    .line 552
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->scrollTo(II)V

    .line 553
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->invalidate()V

    .line 554
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 258
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 569
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollY()I

    move-result v0

    .line 572
    .local v0, "oldY":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 573
    .local v1, "y":I
    if-eq v0, v1, :cond_0

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->C:Z

    if-nez v2, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->scrollTo(II)V

    .line 576
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    const v3, 0x44bb8000    # 1500.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->z:F

    .line 577
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->z:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->z:F

    .line 578
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->invalidate()V

    .line 581
    .end local v0    # "oldY":I
    .end local v1    # "y":I
    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->c()V

    .line 451
    :cond_0
    return-void
.end method

.method public getmCurScalingFactor()F
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->s:F

    return v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->B:I

    .line 253
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 254
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 280
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 282
    :cond_0
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    sget v11, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->f:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 283
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 284
    .local v8, "textWidth":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float v9, v10, v11

    .line 285
    .local v9, "textX":F
    const-string v10, ""

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v9, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 359
    .end local v8    # "textWidth":F
    .end local v9    # "textX":F
    :cond_1
    return-void

    .line 288
    :cond_2
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->B:I

    if-nez v10, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v11, v12

    div-float/2addr v10, v11

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->B:I

    .line 293
    :cond_3
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->B:I

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0x2

    sub-int v4, v10, v11

    .line 294
    .local v4, "minRaw":I
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->B:I

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0x2

    add-int v3, v10, v11

    .line 295
    .local v3, "maxRaw":I
    const/4 v10, 0x0

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 296
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 298
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    sub-int v10, v3, v10

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    sub-int/2addr v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 300
    .local v1, "count":I
    const/16 v10, 0xff

    div-int v0, v10, v1

    .line 302
    .local v0, "alpha":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    int-to-float v11, v4

    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v13, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float v5, v10, v11

    .line 303
    .local v5, "rowY":F
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_1

    .line 305
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    if-ne v2, v10, :cond_5

    .line 307
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->o:F

    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->z:F

    mul-float/2addr v11, v12

    add-float v7, v10, v11

    .line 308
    .local v7, "textSize":F
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->v:Landroid/graphics/Paint;

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 310
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->d()Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "text":Ljava/lang/String;
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->v:Landroid/graphics/Paint;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 312
    .restart local v8    # "textWidth":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v8, v10

    if-lez v10, :cond_4

    .line 314
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->J:F

    iget-object v11, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10, v5, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 349
    .end local v7    # "textSize":F
    :goto_1
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v10, v11

    add-float/2addr v5, v10

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .restart local v7    # "textSize":F
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float v9, v10, v11

    .line 318
    .restart local v9    # "textX":F
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 321
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "textSize":F
    .end local v8    # "textWidth":F
    .end local v9    # "textX":F
    :cond_5
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->H:I

    if-ne v2, v10, :cond_6

    .line 323
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->o:F

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->o:F

    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->z:F

    mul-float/2addr v11, v12

    sub-float v7, v10, v11

    .line 324
    .restart local v7    # "textSize":F
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 328
    .end local v7    # "textSize":F
    :goto_2
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->d()Ljava/lang/String;

    move-result-object v6

    .line 329
    .restart local v6    # "text":Ljava/lang/String;
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 330
    .restart local v8    # "textWidth":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float v9, v10, v11

    .line 332
    .restart local v9    # "textX":F
    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 334
    iget-boolean v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->M:Z

    if-eqz v10, :cond_8

    .line 337
    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    if-ne v2, v10, :cond_7

    .line 338
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    :goto_3
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 326
    .end local v6    # "text":Ljava/lang/String;
    .end local v8    # "textWidth":F
    .end local v9    # "textX":F
    :cond_6
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    .line 340
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v8    # "textWidth":F
    .restart local v9    # "textX":F
    :cond_7
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    const v11, -0x60000001

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 343
    :cond_8
    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->w:Landroid/graphics/Paint;

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->r:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3
.end method

.method public onGlobalLayout()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->e()V

    .line 264
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 367
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 432
    :goto_0
    return v2

    .line 370
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v2, v3

    .line 432
    goto :goto_0

    .line 372
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->D:F

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->F:F

    goto :goto_1

    .line 376
    :pswitch_1
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->C:Z

    if-nez v2, :cond_4

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->D:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->A:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->D:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->F:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 378
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->C:Z

    .line 380
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 381
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->f()V

    .line 382
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->z:F

    .line 384
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->E:F

    .line 387
    :cond_4
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->C:Z

    if-eqz v2, :cond_7

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->E:F

    sub-float v1, v2, v5

    .line 389
    .local v1, "offset":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    cmpg-float v2, v2, v8

    if-gez v2, :cond_6

    .line 390
    cmpl-float v2, v1, v8

    if-lez v2, :cond_5

    .line 391
    mul-float v2, v1, v9

    div-float v1, v2, v10

    .line 398
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollX()I

    move-result v2

    float-to-int v5, v1

    neg-int v5, v5

    invoke-virtual {p0, v2, v5}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->scrollBy(II)V

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->E:F

    .line 400
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v5, v6

    div-float/2addr v2, v5

    float-to-int v0, v2

    .line 401
    .local v0, "currentRow":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 402
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 403
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c()I

    move-result v2

    invoke-virtual {p0, v2, v4, v4}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->a(IZZ)V

    move v2, v3

    .line 404
    goto/16 :goto_0

    .line 393
    .end local v0    # "currentRow":I
    :cond_6
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    sub-float/2addr v5, v6

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    .line 394
    cmpg-float v2, v1, v8

    if-gez v2, :cond_5

    .line 395
    mul-float v2, v1, v9

    div-float v1, v2, v10

    goto :goto_2

    .line 406
    .end local v1    # "offset":F
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->E:F

    goto/16 :goto_1

    .line 410
    :pswitch_2
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->C:Z

    if-nez v2, :cond_8

    .line 411
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->L:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$a;

    if-eqz v2, :cond_2

    .line 412
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->L:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$a;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$a;->a()V

    goto/16 :goto_1

    .line 415
    :cond_8
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->K:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$b;

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_9

    .line 416
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->K:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$b;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c()I

    move-result v2

    invoke-interface {v5, v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$b;->a(I)V

    .line 418
    :cond_9
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollY()I

    move-result v2

    if-gez v2, :cond_b

    .line 419
    const/16 v2, 0x190

    invoke-direct {p0, v4, v2}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->a(II)V

    .line 424
    :cond_a
    :goto_3
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->C:Z

    .line 425
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->x:Z

    .line 426
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->invalidate()V

    goto/16 :goto_1

    .line 420
    :cond_b
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    sub-float/2addr v5, v6

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    .line 421
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v5, v6

    mul-float/2addr v2, v5

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    const/16 v5, 0x190

    invoke-direct {p0, v2, v5}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->a(II)V

    goto :goto_3

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->M:Z

    .line 363
    return-void
.end method

.method public setLrcRows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "lrcRows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->b()V

    .line 441
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->u:Ljava/util/List;

    .line 442
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->invalidate()V

    .line 443
    return-void
.end method

.method public setLrcScalingFactor(F)V
    .locals 4
    .param p1, "scalingFactor"    # F

    .prologue
    .line 531
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->s:F

    .line 532
    sget v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->g:F

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->s:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->o:F

    .line 533
    sget v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->i:F

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->s:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    .line 534
    sget v0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->n:F

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->s:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    .line 535
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->B:I

    .line 537
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->G:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->q:F

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->t:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->scrollTo(II)V

    .line 538
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->invalidate()V

    .line 539
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->y:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 540
    return-void
.end method

.method public setOnLrcClickListener(Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$a;)V
    .locals 0
    .param p1, "onLrcClickListener"    # Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$a;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->L:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$a;

    .line 597
    return-void
.end method

.method public setOnSeekToListener(Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$b;)V
    .locals 0
    .param p1, "onSeekToListener"    # Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$b;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/LrcView;->K:Lcom/jiliguala/niuwa/common/widget/lyric/LrcView$b;

    .line 593
    return-void
.end method
