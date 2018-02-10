.class public final Lcom/makeramen/roundedimageview/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/DisplayMetrics;

.field private b:[F

.field private c:Z

.field private d:F

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/e;->b:[F

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/makeramen/roundedimageview/e;->c:Z

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/e;->d:F

    .line 37
    const/high16 v0, -0x1000000

    .line 38
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/e;->e:Landroid/content/res/ColorStateList;

    .line 39
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/makeramen/roundedimageview/e;->f:Landroid/widget/ImageView$ScaleType;

    .line 42
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/e;->a:Landroid/util/DisplayMetrics;

    .line 43
    return-void

    .line 33
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/makeramen/roundedimageview/e;)Z
    .locals 1
    .param p0, "x0"    # Lcom/makeramen/roundedimageview/e;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/e;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/makeramen/roundedimageview/e;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/makeramen/roundedimageview/e;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/makeramen/roundedimageview/e;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic c(Lcom/makeramen/roundedimageview/e;)F
    .locals 1
    .param p0, "x0"    # Lcom/makeramen/roundedimageview/e;

    .prologue
    .line 28
    iget v0, p0, Lcom/makeramen/roundedimageview/e;->d:F

    return v0
.end method

.method static synthetic d(Lcom/makeramen/roundedimageview/e;)[F
    .locals 1
    .param p0, "x0"    # Lcom/makeramen/roundedimageview/e;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/makeramen/roundedimageview/e;->b:[F

    return-object v0
.end method

.method static synthetic e(Lcom/makeramen/roundedimageview/e;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "x0"    # Lcom/makeramen/roundedimageview/e;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/makeramen/roundedimageview/e;->f:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method


# virtual methods
.method public a(F)Lcom/makeramen/roundedimageview/e;
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 57
    iget-object v0, p0, Lcom/makeramen/roundedimageview/e;->b:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 58
    iget-object v0, p0, Lcom/makeramen/roundedimageview/e;->b:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 59
    iget-object v0, p0, Lcom/makeramen/roundedimageview/e;->b:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 60
    iget-object v0, p0, Lcom/makeramen/roundedimageview/e;->b:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 61
    return-object p0
.end method

.method public a(I)Lcom/makeramen/roundedimageview/e;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 128
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/e;->e:Landroid/content/res/ColorStateList;

    .line 129
    return-object p0
.end method

.method public a(IF)Lcom/makeramen/roundedimageview/e;
    .locals 1
    .param p1, "corner"    # I
    .param p2, "radius"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/makeramen/roundedimageview/e;->b:[F

    aput p2, v0, p1

    .line 73
    return-object p0
.end method

.method public a(Landroid/content/res/ColorStateList;)Lcom/makeramen/roundedimageview/e;
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/makeramen/roundedimageview/e;->e:Landroid/content/res/ColorStateList;

    .line 140
    return-object p0
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/e;
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/makeramen/roundedimageview/e;->f:Landroid/widget/ImageView$ScaleType;

    .line 47
    return-object p0
.end method

.method public a(Z)Lcom/makeramen/roundedimageview/e;
    .locals 0
    .param p1, "oval"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/e;->c:Z

    .line 151
    return-object p0
.end method

.method public a()Lcom/squareup/picasso/ad;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/makeramen/roundedimageview/e$1;

    invoke-direct {v0, p0}, Lcom/makeramen/roundedimageview/e$1;-><init>(Lcom/makeramen/roundedimageview/e;)V

    return-object v0
.end method

.method public b(F)Lcom/makeramen/roundedimageview/e;
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 83
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/makeramen/roundedimageview/e;->a:Landroid/util/DisplayMetrics;

    .line 84
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/e;->a(F)Lcom/makeramen/roundedimageview/e;

    move-result-object v0

    return-object v0
.end method

.method public b(IF)Lcom/makeramen/roundedimageview/e;
    .locals 2
    .param p1, "corner"    # I
    .param p2, "radius"    # F

    .prologue
    .line 95
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/makeramen/roundedimageview/e;->a:Landroid/util/DisplayMetrics;

    .line 96
    invoke-static {v0, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/makeramen/roundedimageview/e;->a(IF)Lcom/makeramen/roundedimageview/e;

    move-result-object v0

    return-object v0
.end method

.method public c(F)Lcom/makeramen/roundedimageview/e;
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/makeramen/roundedimageview/e;->d:F

    .line 107
    return-object p0
.end method

.method public d(F)Lcom/makeramen/roundedimageview/e;
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 117
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/makeramen/roundedimageview/e;->a:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/makeramen/roundedimageview/e;->d:F

    .line 118
    return-object p0
.end method
