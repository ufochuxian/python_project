.class public Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private d:Landroid/graphics/Paint;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->d:Landroid/graphics/Paint;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->a:I

    .line 25
    const v1, 0x7f0700fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->c:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->b:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->a()V

    .line 29
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->d:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .param p1, "drawIndicator"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->e:Z

    .line 42
    return-void
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 46
    .local v0, "text":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->e:Z

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->e:Z

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->getWidth()I

    move-result v2

    .line 56
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->getHeight()I

    move-result v0

    .line 57
    .local v0, "heigth":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 58
    .local v1, "radius":I
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/datetimepicker/date/TextViewWithCircularIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    .end local v0    # "heigth":I
    .end local v1    # "radius":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method
