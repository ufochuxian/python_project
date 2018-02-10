.class public Lcom/jkb/vcedittext/VerificationCodeEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/jkb/vcedittext/c;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private g:Lcom/jkb/vcedittext/c$a;

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jkb/vcedittext/VerificationCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jkb/vcedittext/VerificationCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->h:I

    .line 35
    iput v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->i:I

    .line 51
    invoke-direct {p0, p2}, Lcom/jkb/vcedittext/VerificationCodeEditText;->a(Landroid/util/AttributeSet;)V

    .line 52
    const v0, 0x106000d

    invoke-static {p1, v0}, Landroid/support/v4/content/d;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->setBackgroundColor(I)V

    .line 53
    invoke-direct {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->a()V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->setFocusableInTouchMode(Z)V

    .line 55
    invoke-super {p0, p0}, Landroid/support/v7/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    return-void
.end method

.method private a(I)I
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/d;->c(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static a(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 259
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 260
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 261
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method private a()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->j:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->k:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->k:Landroid/graphics/Paint;

    const v1, 0x106000d

    invoke-direct {p0, v1}, Lcom/jkb/vcedittext/VerificationCodeEditText;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->l:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->m:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x1060000

    .line 79
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/jkb/vcedittext/b$l;->VerCodeEditText:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/jkb/vcedittext/b$l;->VerCodeEditText_figures:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->a:I

    .line 81
    sget v1, Lcom/jkb/vcedittext/b$l;->VerCodeEditText_verCodeMargin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->b:I

    .line 82
    sget v1, Lcom/jkb/vcedittext/b$l;->VerCodeEditText_bottomLineSelectedColor:I

    .line 83
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getCurrentTextColor()I

    move-result v2

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->c:I

    .line 84
    sget v1, Lcom/jkb/vcedittext/b$l;->VerCodeEditText_bottomLineNormalColor:I

    .line 85
    invoke-direct {p0, v3}, Lcom/jkb/vcedittext/VerificationCodeEditText;->a(I)I

    move-result v2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->d:I

    .line 86
    sget v1, Lcom/jkb/vcedittext/b$l;->VerCodeEditText_bottomLineHeight:I

    const/4 v2, 0x5

    .line 87
    invoke-direct {p0, v2}, Lcom/jkb/vcedittext/VerificationCodeEditText;->b(I)I

    move-result v2

    int-to-float v2, v2

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->e:F

    .line 88
    sget v1, Lcom/jkb/vcedittext/b$l;->VerCodeEditText_selectedBackgroundColor:I

    .line 89
    invoke-direct {p0, v3}, Lcom/jkb/vcedittext/VerificationCodeEditText;->a(I)I

    move-result v2

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->f:I

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method private b(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 250
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 251
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 250
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->h:I

    .line 188
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->postInvalidate()V

    .line 189
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->a:I

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->g:Lcom/jkb/vcedittext/c$a;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->g:Lcom/jkb/vcedittext/c$a;

    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jkb/vcedittext/c$a;->a(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->a:I

    if-le v0, v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->a:I

    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->h:I

    .line 173
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->postInvalidate()V

    .line 174
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->h:I

    .line 126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->i:I

    invoke-virtual/range {p0 .. p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getPaddingRight()I

    move-result v3

    sub-int v16, v2, v3

    .line 127
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getMeasuredHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getPaddingBottom()I

    move-result v3

    sub-int v11, v2, v3

    .line 128
    .local v11, "height":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->a:I

    if-ge v12, v2, :cond_1

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    mul-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->b:I

    mul-int/2addr v3, v12

    add-int v14, v2, v3

    .line 131
    .local v14, "start":I
    add-int v9, v16, v14

    .line 133
    .local v9, "end":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->h:I

    if-ne v12, v2, :cond_0

    .line 134
    int-to-float v3, v14

    const/4 v4, 0x0

    int-to-float v5, v9

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->j:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 128
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 136
    :cond_0
    int-to-float v3, v14

    const/4 v4, 0x0

    int-to-float v5, v9

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->k:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 141
    .end local v9    # "end":I
    .end local v14    # "start":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 142
    .local v15, "value":Ljava/lang/String;
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    mul-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->b:I

    mul-int/2addr v3, v12

    add-int v14, v2, v3

    .line 145
    .restart local v14    # "start":I
    div-int/lit8 v2, v16, 0x2

    add-int/2addr v2, v14

    int-to-float v0, v2

    move/from16 v17, v0

    .line 146
    .local v17, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    .line 147
    .local v13, "paint":Landroid/text/TextPaint;
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 149
    invoke-virtual {v13}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 150
    .local v10, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    int-to-float v2, v11

    iget v3, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v3, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v8, v2, v3

    .line 152
    .local v8, "baseline":F
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1, v8, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 156
    .end local v8    # "baseline":F
    .end local v10    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .end local v14    # "start":I
    .end local v17    # "x":F
    :cond_2
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->a:I

    if-ge v12, v2, :cond_4

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 158
    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->e:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float v4, v2, v3

    .line 159
    .local v4, "lineY":F
    mul-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->b:I

    mul-int/2addr v3, v12

    add-int v14, v2, v3

    .line 160
    .restart local v14    # "start":I
    add-int v9, v16, v14

    .line 161
    .restart local v9    # "end":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->h:I

    if-ge v12, v2, :cond_3

    .line 162
    int-to-float v3, v14

    int-to-float v5, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->l:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 156
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 164
    :cond_3
    int-to-float v3, v14

    int-to-float v5, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jkb/vcedittext/VerificationCodeEditText;->m:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 168
    .end local v4    # "lineY":F
    .end local v9    # "end":I
    .end local v14    # "start":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 101
    const/4 v4, 0x0

    .local v4, "widthResult":I
    const/4 v1, 0x0

    .line 103
    .local v1, "heightResult":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 104
    .local v3, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 105
    .local v5, "widthSize":I
    if-ne v3, v8, :cond_0

    .line 106
    move v4, v5

    .line 111
    :goto_0
    iget v6, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->b:I

    iget v7, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->a:I

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    sub-int v6, v4, v6

    iget v7, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->a:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->i:I

    .line 113
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 114
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 115
    .local v2, "heightSize":I
    if-ne v0, v8, :cond_1

    .line 116
    move v1, v2

    .line 120
    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/jkb/vcedittext/VerificationCodeEditText;->setMeasuredDimension(II)V

    .line 121
    return-void

    .line 108
    .end local v0    # "heightMode":I
    .end local v2    # "heightSize":I
    :cond_0
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/jkb/vcedittext/VerificationCodeEditText;->a(Landroid/content/Context;)I

    move-result v4

    goto :goto_0

    .line 118
    .restart local v0    # "heightMode":I
    .restart local v2    # "heightSize":I
    :cond_1
    iget v1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->i:I

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->h:I

    .line 179
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->postInvalidate()V

    .line 180
    iget-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->g:Lcom/jkb/vcedittext/c$a;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->g:Lcom/jkb/vcedittext/c$a;

    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/jkb/vcedittext/c$a;->a(Ljava/lang/CharSequence;III)V

    .line 183
    :cond_0
    return-void
.end method

.method public setBottomLineHeight(I)V
    .locals 1
    .param p1, "bottomLineHeight"    # I

    .prologue
    .line 230
    int-to-float v0, p1

    iput v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->e:F

    .line 231
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->postInvalidate()V

    .line 232
    return-void
.end method

.method public setBottomNormalColor(I)V
    .locals 1
    .param p1, "bottomNormalColor"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/jkb/vcedittext/VerificationCodeEditText;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->c:I

    .line 219
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->postInvalidate()V

    .line 220
    return-void
.end method

.method public setBottomSelectedColor(I)V
    .locals 1
    .param p1, "bottomSelectedColor"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/jkb/vcedittext/VerificationCodeEditText;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->c:I

    .line 213
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->postInvalidate()V

    .line 214
    return-void
.end method

.method public final setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatEditText;->setCursorVisible(Z)V

    .line 97
    return-void
.end method

.method public setFigures(I)V
    .locals 0
    .param p1, "figures"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->a:I

    .line 201
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->postInvalidate()V

    .line 202
    return-void
.end method

.method public setOnVerificationCodeChangedListener(Lcom/jkb/vcedittext/c$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jkb/vcedittext/c$a;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->g:Lcom/jkb/vcedittext/c$a;

    .line 237
    return-void
.end method

.method public setSelectedBackgroundColor(I)V
    .locals 1
    .param p1, "selectedBackground"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/jkb/vcedittext/VerificationCodeEditText;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->f:I

    .line 225
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->postInvalidate()V

    .line 226
    return-void
.end method

.method public setVerCodeMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/jkb/vcedittext/VerificationCodeEditText;->b:I

    .line 207
    invoke-virtual {p0}, Lcom/jkb/vcedittext/VerificationCodeEditText;->postInvalidate()V

    .line 208
    return-void
.end method
