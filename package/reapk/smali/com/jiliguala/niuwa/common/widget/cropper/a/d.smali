.class public Lcom/jiliguala/niuwa/common/widget/cropper/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = -0x1

.field private static final b:Ljava/lang/String; = "#AAFFFFFF"

.field private static final c:Ljava/lang/String; = "#B0000000"

.field private static final d:F = 3.0f

.field private static final e:F = 5.0f

.field private static final f:F = 1.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 64
    .local v0, "paint":Landroid/graphics/Paint;
    const-string v1, "#AAFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v2, 0x1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 46
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 49
    .local v1, "lineThicknessPx":F
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .local v0, "borderPaint":Landroid/graphics/Paint;
    const-string v2, "#AAFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    return-object v0
.end method

.method public static b()F
    .locals 1

    .prologue
    .line 110
    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 80
    .local v0, "paint":Landroid/graphics/Paint;
    const-string v1, "#B0000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    return-object v0
.end method

.method public static c()F
    .locals 1

    .prologue
    .line 118
    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public static c(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v2, 0x1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 94
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 97
    .local v1, "lineThicknessPx":F
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 98
    .local v0, "cornerPaint":Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    return-object v0
.end method
