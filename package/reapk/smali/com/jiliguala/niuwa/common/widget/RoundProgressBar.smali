.class public Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;,
        Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x1f4

.field public static final g:I = 0x32

.field private static final h:I = 0x100


# instance fields
.field private A:I

.field private B:Landroid/graphics/Paint;

.field private C:I

.field private D:Z

.field private E:Landroid/os/Handler;

.field private F:Z

.field private G:Ljava/util/Timer;

.field private H:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;

.field private I:F

.field private J:I

.field private K:F

.field private L:J

.field private M:Landroid/graphics/drawable/Drawable;

.field private N:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$b;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:Landroid/graphics/Paint;

.field private q:I

.field private r:F

.field private s:F

.field private t:I

.field private u:Landroid/graphics/RectF;

.field private v:Landroid/graphics/RectF;

.field private w:Landroid/graphics/Paint;

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->b()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v6, 0xa

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->b()V

    .line 76
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->M:Landroid/graphics/drawable/Drawable;

    .line 80
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->i:Z

    .line 82
    const/16 v1, 0xb

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    .line 83
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->J:I

    .line 84
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->n:Z

    .line 85
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->n:Z

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->w:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->z:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    .line 92
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->q:I

    .line 93
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->q:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->s:F

    .line 97
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->r:F

    .line 98
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->t:I

    .line 100
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->D:Z

    .line 102
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    .line 103
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->n:Z

    if-eqz v1, :cond_1

    .line 104
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->w:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    const/4 v1, 0x6

    const/16 v2, -0x3400

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->y:I

    .line 109
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->w:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->y:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->z:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    const/16 v1, 0xc

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->y:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, 0x66000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->A:I

    .line 113
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->z:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->A:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    const v1, -0x777778

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->C:I

    .line 117
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->C:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;
    .param p1, "x1"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->K:F

    return p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->F:Z

    return v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .prologue
    .line 23
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->K:F

    return v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 128
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->i:Z

    .line 130
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    .line 131
    const/16 v1, -0x3400

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->y:I

    .line 134
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->w:Landroid/graphics/Paint;

    .line 135
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->w:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->w:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->w:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->w:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->y:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->z:Landroid/graphics/Paint;

    .line 142
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->z:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->z:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->z:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->y:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, 0x66000000

    or-int v0, v1, v2

    .line 147
    .local v0, "color":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->z:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    .line 150
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->p:Landroid/graphics/Paint;

    .line 156
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->q:I

    .line 161
    const/16 v1, -0x5a

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->j:I

    .line 162
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    .line 163
    iput v7, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    .line 164
    iput v7, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->J:I

    .line 166
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->n:Z

    .line 167
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->D:Z

    .line 169
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    .line 171
    iput v6, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->s:F

    .line 172
    iput v6, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->r:F

    .line 173
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->t:I

    .line 175
    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I

    .line 177
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    .line 178
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->v:Landroid/graphics/RectF;

    .line 180
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->K:F

    .line 181
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->I:F

    .line 182
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->F:Z

    .line 184
    new-instance v1, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$1;-><init>(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->E:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .prologue
    .line 23
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->I:F

    return v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .prologue
    .line 23
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->J:I

    return v0
.end method

.method static synthetic e(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->E:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->F:Z

    .line 361
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->H:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->H:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;->cancel()Z

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->H:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->G:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->G:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :cond_1
    monitor-exit p0

    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 6
    .param p1, "newProgress"    # I

    .prologue
    const/4 v1, 0x1

    .line 330
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->F:Z

    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->H:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->H:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;->cancel()Z

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->H:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->G:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->G:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 344
    :cond_3
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->J:I

    .line 345
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->J:I

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->I:F

    .line 347
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->L:J

    .line 348
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    int-to-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->K:F

    .line 350
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;-><init>(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->H:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;

    .line 351
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->G:Ljava/util/Timer;

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->G:Ljava/util/Timer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->H:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 376
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 378
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->i:Z

    if-eqz v3, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->M:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 385
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 386
    .local v21, "path":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    .line 387
    .local v18, "center_x":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    .line 388
    .local v19, "center_y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 389
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->M:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    .line 394
    .local v17, "bmp":Landroid/graphics/Bitmap;
    const v20, 0x1060013

    .line 395
    .local v20, "color":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 398
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 402
    .end local v17    # "bmp":Landroid/graphics/Bitmap;
    .end local v18    # "center_x":F
    .end local v19    # "center_y":F
    .end local v20    # "color":I
    .end local v21    # "path":Landroid/graphics/Path;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->y:I

    const v4, 0xffffff

    if-eq v3, v4, :cond_5

    .line 404
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->q:I

    if-eqz v3, :cond_3

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->v:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->p:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 408
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->D:Z

    if-eqz v3, :cond_4

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->n:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 412
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    int-to-float v4, v4

    div-float v23, v3, v4

    .line 413
    .local v23, "secondRate":F
    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v6, v3, v23

    .line 414
    .local v6, "secondSweep":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->j:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->n:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->z:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 416
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    int-to-float v4, v4

    div-float v22, v3, v4

    .line 417
    .local v22, "rate":F
    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v10, v3, v22

    .line 418
    .local v10, "sweep":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->j:I

    int-to-float v9, v3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->n:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->w:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 421
    .end local v6    # "secondSweep":F
    .end local v10    # "sweep":F
    .end local v22    # "rate":F
    .end local v23    # "secondRate":F
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->q:I

    if-eqz v3, :cond_6

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->v:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/high16 v14, 0x43b40000    # 360.0f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->p:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 424
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->D:Z

    if-eqz v3, :cond_0

    .line 425
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    int-to-float v4, v4

    div-float v22, v3, v4

    .line 426
    .restart local v22    # "rate":F
    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v10, v3, v22

    .line 427
    .restart local v10    # "sweep":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->j:I

    int-to-float v3, v3

    add-float v13, v3, v10

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v14, v3, v10

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->n:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 270
    invoke-super/range {p0 .. p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 275
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->getPaddingLeft()I

    move-result v3

    .line 276
    .local v3, "sl":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->getPaddingRight()I

    move-result v4

    .line 277
    .local v4, "sr":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->getPaddingTop()I

    move-result v5

    .line 278
    .local v5, "st":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->getPaddingBottom()I

    move-result v2

    .line 279
    .local v2, "sb":I
    sub-int v6, p1, v3

    sub-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->r:F

    mul-float v1, v6, v7

    .line 280
    .local v1, "barWidth":F
    sub-int v6, p2, v5

    sub-int/2addr v6, v2

    int-to-float v6, v6

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->s:F

    mul-float v0, v6, v7

    .line 281
    .local v0, "barHeight":F
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->t:I

    packed-switch v6, :pswitch_data_0

    .line 322
    :goto_0
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->q:I

    if-eqz v6, :cond_0

    .line 323
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->v:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 327
    :cond_0
    return-void

    .line 283
    :pswitch_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    int-to-float v7, p1

    sub-float/2addr v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    int-to-float v8, p2

    sub-float/2addr v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, p1

    add-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    int-to-float v10, p2

    add-float/2addr v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v9, v1, v9

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v10, v0, v10

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 300
    :pswitch_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    int-to-float v7, p1

    sub-float/2addr v7, v1

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v9, v9, 0x2

    sub-int v9, p1, v9

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v10, v0, v10

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 308
    :pswitch_3
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    int-to-float v7, p1

    sub-float/2addr v7, v1

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    int-to-float v8, p2

    sub-float/2addr v8, v0

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v9, v9, 0x2

    sub-int v9, p1, v9

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v10, v10, 0x2

    sub-int v10, p2, v10

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 316
    :pswitch_4
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->u:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, p2

    sub-float/2addr v8, v0

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v9, v1, v9

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->x:I

    div-int/lit8 v10, v10, 0x2

    sub-int v10, p2, v10

    iget v11, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->o:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->i:Z

    .line 435
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->invalidate()V

    .line 436
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 372
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->M:Landroid/graphics/drawable/Drawable;

    .line 373
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 249
    monitor-enter p0

    if-gtz p1, :cond_0

    .line 265
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :cond_0
    :try_start_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    .line 254
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    if-le v0, p1, :cond_1

    .line 255
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    .line 258
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I

    if-le v0, p1, :cond_2

    .line 259
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I

    .line 262
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->J:I

    .line 264
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPaintColor(I)V
    .locals 2
    .param p1, "paintColor"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->y:I

    .line 440
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    .line 212
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    if-gez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    .line 216
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    if-le v0, v1, :cond_1

    .line 217
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->l:I

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->N:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$b;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->N:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$b;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$b;->a(I)V

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressBgPaintColor(I)V
    .locals 2
    .param p1, "progressBgPaintColor"    # I

    .prologue
    .line 444
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->C:I

    .line 445
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->C:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I

    .line 233
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I

    if-gez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I

    .line 237
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    if-le v0, v1, :cond_1

    .line 238
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->k:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->m:I

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setmOnProgressChangedListener(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$b;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->N:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$b;

    .line 124
    return-void
.end method
