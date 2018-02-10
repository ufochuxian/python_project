.class public Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final a:I = 0x2


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/view/View$OnFocusChangeListener;

.field private g:Landroid/content/Context;

.field private h:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->g:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->g:Landroid/content/Context;

    .line 48
    invoke-direct {p0, p2}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setAttributes(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object p1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->g:Landroid/content/Context;

    .line 55
    invoke-direct {p0, p2}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setAttributes(Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setShowHint(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "gotFocus"    # Z

    .prologue
    const/4 v2, 0x2

    .line 136
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 142
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b(Z)V

    .line 143
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 140
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 142
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 137
    :array_0
    .array-data 4
        0x3ea8f5c3    # 0.33f
        0x3f800000    # 1.0f
    .end array-data

    .line 140
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ea8f5c3    # 0.33f
    .end array-data
.end method

.method static synthetic b(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->f:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic b(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    .local v0, "drs":[Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 193
    iget-object v2, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->h:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->h:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v3, v1, v1, v2, v1}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->a(Z)V

    return-void
.end method

.method private setAttributes(Landroid/util/AttributeSet;)V
    .locals 14
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v13, -0x2

    const/4 v12, 0x0

    .line 59
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->g:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    .line 61
    iget-object v8, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->g:Landroid/content/Context;

    sget-object v9, Lcom/wrapp/floatlabelededittext/b$f;->FloatLabeledEditText:[I

    invoke-virtual {v8, p1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Lcom/wrapp/floatlabelededittext/b$f;->FloatLabeledEditText_fletPadding:I

    invoke-virtual {v0, v8, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 64
    .local v3, "padding":I
    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 65
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 64
    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v2, v8

    .line 66
    .local v2, "defaultPadding":I
    sget v8, Lcom/wrapp/floatlabelededittext/b$f;->FloatLabeledEditText_fletPaddingLeft:I

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 67
    .local v5, "paddingLeft":I
    sget v8, Lcom/wrapp/floatlabelededittext/b$f;->FloatLabeledEditText_fletPaddingTop:I

    invoke-virtual {v0, v8, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 68
    .local v7, "paddingTop":I
    sget v8, Lcom/wrapp/floatlabelededittext/b$f;->FloatLabeledEditText_fletPaddingRight:I

    invoke-virtual {v0, v8, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 69
    .local v6, "paddingRight":I
    sget v8, Lcom/wrapp/floatlabelededittext/b$f;->FloatLabeledEditText_fletPaddingBottom:I

    invoke-virtual {v0, v8, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 70
    .local v4, "paddingBottom":I
    sget v8, Lcom/wrapp/floatlabelededittext/b$f;->FloatLabeledEditText_fletBackground:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 72
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 73
    iget-object v8, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 78
    :goto_0
    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0, v1}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setHintBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    iget-object v8, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->g:Landroid/content/Context;

    sget v10, Lcom/wrapp/floatlabelededittext/b$f;->FloatLabeledEditText_fletTextAppearance:I

    sget v11, Lcom/wrapp/floatlabelededittext/b$e;->TextMini:I

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 84
    invoke-virtual {p0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/wrapp/floatlabelededittext/b$d;->input_delete_icon:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->h:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v8, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->h:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object v8, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v8, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 91
    iget-object v8, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v8, v13, v13}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->addView(Landroid/view/View;II)V

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void

    .line 75
    :cond_1
    iget-object v8, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v7, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    .line 206
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$2;

    invoke-direct {v1, p0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$2;-><init>(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$3;

    invoke-direct {v1, p0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$3;-><init>(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$4;

    invoke-direct {v1, p0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$4;-><init>(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    return-void
.end method

.method private setHintBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setShowHint(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "animation":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    if-nez p1, :cond_2

    .line 148
    new-instance v0, Landroid/animation/AnimatorSet;

    .end local v0    # "animation":Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 149
    .restart local v0    # "animation":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const-string v4, "translationY"

    new-array v5, v7, [F

    aput v10, v5, v8

    iget-object v6, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 150
    .local v2, "move":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 151
    .local v1, "fade":Landroid/animation/ObjectAnimator;
    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v2, v3, v8

    aput-object v1, v3, v9

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 164
    .end local v1    # "fade":Landroid/animation/ObjectAnimator;
    .end local v2    # "move":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 165
    new-instance v3, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;

    invoke-direct {v3, p0, p1}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText$1;-><init>(Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 186
    :cond_1
    return-void

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 153
    new-instance v0, Landroid/animation/AnimatorSet;

    .end local v0    # "animation":Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 154
    .restart local v0    # "animation":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const-string v4, "translationY"

    new-array v5, v7, [F

    iget-object v6, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    int-to-float v6, v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 156
    .restart local v2    # "move":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    iget-object v3, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 161
    .restart local v1    # "fade":Landroid/animation/ObjectAnimator;
    :goto_1
    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v2, v3, v8

    aput-object v1, v3, v9

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 159
    .end local v1    # "fade":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v3, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "fade":Landroid/animation/ObjectAnimator;
    goto :goto_1

    .line 150
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 157
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 159
    :array_2
    .array-data 4
        0x0
        0x3ea8f5c3    # 0.33f
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 106
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can only have one Edittext subview"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 113
    iget-object v1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget-object v2, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 114
    move-object p3, v0

    move-object v1, p1

    .line 116
    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setEditText(Landroid/widget/EditText;)V

    .line 119
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method public getChildFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->f:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 125
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->d:I

    .line 126
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->e:Ljava/lang/CharSequence;

    .line 127
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->f:Landroid/view/View$OnFocusChangeListener;

    .line 133
    return-void
.end method

.method public setChildFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "mChildFocusChangeListener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->f:Landroid/view/View$OnFocusChangeListener;

    .line 294
    return-void
.end method

.method public setHint(I)V
    .locals 1
    .param p1, "stringRes"    # I
        .annotation build Landroid/support/annotation/ai;
        .end annotation
    .end param

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->setHint(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    return-void
.end method

.method public setHintColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param

    .prologue
    .line 277
    iget-object v0, p0, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wrapp/floatlabelededittext/FloatLabeledEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    return-void
.end method
