.class public Lcom/kyleduo/switchbutton/SwitchButton;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field public static final a:F = 1.8f

.field public static final b:I = 0x14

.field public static final c:I = 0x2

.field public static final d:I = 0xfa

.field public static final e:I = 0x327fc2

.field private static f:[I

.field private static g:[I


# instance fields
.field private A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/Paint;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Landroid/animation/ObjectAnimator;

.field private G:F

.field private H:Landroid/graphics/RectF;

.field private I:F

.field private J:F

.field private K:F

.field private L:I

.field private M:I

.field private N:Landroid/graphics/Paint;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/content/res/ColorStateList;

.field private l:F

.field private m:F

.field private n:Landroid/graphics/RectF;

.field private o:F

.field private p:J

.field private q:Z

.field private r:I

.field private s:Landroid/graphics/PointF;

.field private t:I

.field private u:I

.field private v:I

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/RectF;

.field private z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->f:[I

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->g:[I

    return-void

    .line 40
    :array_0
    .array-data 4
        0x10100a0
        0x101009e
        0x10100a7
    .end array-data

    .line 41
    :array_1
    .array-data 4
        -0x10100a0
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    .line 78
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    .line 73
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method private a(I)I
    .locals 6
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 205
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 206
    .local v3, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 209
    .local v2, "widthMode":I
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 210
    .local v1, "minWidth":I
    iget-boolean v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Z

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 213
    :cond_0
    int-to-float v4, v1

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 214
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 215
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 217
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_2

    .line 218
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 226
    .local v0, "measuredWidth":I
    :cond_1
    :goto_0
    return v0

    .line 220
    .end local v0    # "measuredWidth":I
    :cond_2
    move v0, v1

    .line 221
    .restart local v0    # "measuredWidth":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 222
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 28
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->L:I

    .line 88
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v24

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->M:I

    .line 90
    new-instance v24, Landroid/graphics/Paint;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/Paint;

    .line 91
    new-instance v24, Landroid/graphics/Paint;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->N:Landroid/graphics/Paint;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->N:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->N:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    new-instance v24, Landroid/graphics/RectF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    .line 96
    new-instance v24, Landroid/graphics/RectF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    .line 97
    new-instance v24, Landroid/graphics/RectF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->A:Landroid/graphics/RectF;

    .line 98
    new-instance v24, Landroid/graphics/PointF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    .line 99
    new-instance v24, Landroid/graphics/RectF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    .line 101
    const-string v24, "process"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    const-wide/16 v26, 0xfa

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    new-instance v25, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v25 .. v25}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual/range {v24 .. v25}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    new-instance v24, Landroid/graphics/RectF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/graphics/RectF;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 107
    .local v16, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 109
    .local v9, "density":F
    const/16 v19, 0x0

    .line 110
    .local v19, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x0

    .line 111
    .local v18, "thumbColor":Landroid/content/res/ColorStateList;
    const/high16 v24, 0x40000000    # 2.0f

    mul-float v11, v9, v24

    .line 112
    .local v11, "margin":F
    const/4 v13, 0x0

    .line 113
    .local v13, "marginLeft":F
    const/4 v14, 0x0

    .line 114
    .local v14, "marginRight":F
    const/4 v15, 0x0

    .line 115
    .local v15, "marginTop":F
    const/4 v12, 0x0

    .line 116
    .local v12, "marginBottom":F
    const/high16 v24, 0x41a00000    # 20.0f

    mul-float v22, v9, v24

    .line 117
    .local v22, "thumbWidth":F
    const/high16 v24, 0x41a00000    # 20.0f

    mul-float v20, v9, v24

    .line 118
    .local v20, "thumbHeight":F
    const/high16 v24, 0x41a00000    # 20.0f

    mul-float v24, v24, v9

    const/high16 v25, 0x40000000    # 2.0f

    div-float v21, v24, v25

    .line 119
    .local v21, "thumbRadius":F
    move/from16 v8, v21

    .line 120
    .local v8, "backRadius":F
    const/4 v6, 0x0

    .line 121
    .local v6, "backDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 122
    .local v5, "backColor":Landroid/content/res/ColorStateList;
    const v7, 0x3fe66666    # 1.8f

    .line 123
    .local v7, "backMeasureRatio":F
    const/16 v4, 0xfa

    .line 124
    .local v4, "animationDuration":I
    const/4 v10, 0x1

    .line 125
    .local v10, "fadeBack":Z
    const/high16 v23, -0x80000000

    .line 127
    .local v23, "tintColor":I
    if-nez p1, :cond_6

    const/16 v17, 0x0

    .line 128
    .local v17, "ta":Landroid/content/res/TypedArray;
    :goto_0
    if-eqz v17, :cond_0

    .line 129
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswThumbDrawable:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 130
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswThumbColor:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    .line 131
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswThumbMargin:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 132
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswThumbMarginLeft:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 133
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswThumbMarginRight:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 134
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswThumbMarginTop:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 135
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswThumbMarginBottom:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    .line 136
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswThumbWidth:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    .line 137
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswThumbHeight:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    .line 138
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswThumbRadius:I

    move/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    .line 139
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswBackRadius:I

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v25, v25, v9

    add-float v25, v25, v21

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 140
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswBackDrawable:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 141
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswBackColor:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 142
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswBackMeasureRatio:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 143
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswAnimationDuration:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 144
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswFadeBack:I

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 145
    sget v24, Lcom/kyleduo/switchbutton/c$l;->SwitchButton_kswTintColor:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    .line 146
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    :cond_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    .line 151
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->k:Landroid/content/res/ColorStateList;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->C:Z

    .line 153
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    move/from16 v24, v0

    const/high16 v25, -0x80000000

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 155
    const v24, 0x327fc2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->k:Landroid/content/res/ColorStateList;

    move-object/from16 v24, v0

    if-nez v24, :cond_8

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/kyleduo/switchbutton/b;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->k:Landroid/content/res/ColorStateList;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->k:Landroid/content/res/ColorStateList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->t:I

    .line 165
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 168
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    .line 169
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    const/16 v24, 0x1

    :goto_3
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->D:Z

    .line 171
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/kyleduo/switchbutton/b;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    move-object/from16 v24, v0

    sget-object v25, Lcom/kyleduo/switchbutton/SwitchButton;->f:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->v:I

    .line 178
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v15, v14, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-ltz v24, :cond_4

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v24

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .end local v7    # "backMeasureRatio":F
    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->o:F

    .line 183
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->l:F

    .line 184
    move-object/from16 v0, p0

    iput v8, v0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    .line 185
    int-to-long v0, v4

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/kyleduo/switchbutton/SwitchButton;->p:J

    .line 186
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/kyleduo/switchbutton/SwitchButton;->q:Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->p:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 190
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setFocusable(Z)V

    .line 191
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setClickable(Z)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 195
    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 197
    :cond_5
    return-void

    .line 127
    .end local v17    # "ta":Landroid/content/res/TypedArray;
    .restart local v7    # "backMeasureRatio":F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v24

    sget-object v25, Lcom/kyleduo/switchbutton/c$l;->SwitchButton:[I

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    goto/16 :goto_0

    .line 152
    .restart local v17    # "ta":Landroid/content/res/TypedArray;
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 160
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    goto/16 :goto_2

    .line 170
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 101
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private b(I)I
    .locals 7
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 230
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 231
    .local v0, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 234
    .local v1, "heightSize":I
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v3, v4

    .line 235
    .local v3, "minHeight":I
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 236
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 238
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    .line 239
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 247
    .local v2, "measuredHeight":I
    :cond_0
    :goto_0
    return v2

    .line 241
    .end local v2    # "measuredHeight":I
    :cond_1
    move v2, v3

    .line 242
    .restart local v2    # "measuredHeight":I
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    .line 243
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method private d()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float v3, v4, v5

    .line 263
    .local v3, "thumbTop":F
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float v2, v4, v5

    .line 265
    .local v2, "thumbLeft":F
    iget-boolean v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Z

    if-eqz v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 267
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 270
    :cond_0
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v2

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 272
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v0, v4, v5

    .line 273
    .local v0, "backLeft":F
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 275
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->A:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v9, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 277
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v1, v4, v5

    .line 278
    .local v1, "minBackRadius":F
    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    .line 280
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 281
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 481
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 482
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 484
    :cond_0
    return-void
.end method

.method private getStatusBasedOnPos()Z
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 509
    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v0

    .line 511
    .local v0, "myDrawableState":[I
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 512
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 514
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 506
    return-void

    .line 505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 627
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 628
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->d()V

    .line 629
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 630
    return-void
.end method

.method public a(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 622
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 623
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 624
    return-void
.end method

.method protected a(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 471
    if-eqz p1, :cond_2

    .line 472
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->G:F

    aput v2, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 476
    :goto_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->G:F

    aput v2, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:Z

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 349
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 351
    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->k:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->t:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->t:I

    .line 357
    :goto_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->g:[I

    .line 358
    .local v0, "nextState":[I
    :goto_1
    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 359
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    .line 360
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->v:I

    .line 373
    :cond_0
    :goto_2
    return-void

    .line 354
    .end local v0    # "nextState":[I
    :cond_1
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 357
    :cond_2
    sget-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->f:[I

    goto :goto_1

    .line 362
    .restart local v0    # "nextState":[I
    :cond_3
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:Z

    if-eqz v1, :cond_4

    .line 363
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 364
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->x:Landroid/graphics/drawable/Drawable;

    .line 368
    :goto_3
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->w:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 366
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->x:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method public getAnimationDuration()J
    .locals 2

    .prologue
    .line 526
    iget-wide v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackMeasureRatio()F
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:F

    return v0
.end method

.method public getBackRadius()F
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    return v0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 665
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getProcess()F
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->G:F

    return v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()F
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getThumbRadius()F
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->l:F

    return v0
.end method

.method public getThumbSizeF()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getThumbWidth()F
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v6, 0xff

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 287
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 290
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Z

    if-eqz v2, :cond_3

    .line 291
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v2

    :goto_0
    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 293
    .local v0, "alpha":I
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 294
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 295
    rsub-int v0, v0, 0xff

    .line 296
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 297
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 329
    .end local v0    # "alpha":I
    :goto_1
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 330
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->G:F

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->A:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 331
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Z

    if-eqz v2, :cond_6

    .line 332
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 339
    :goto_2
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->N:Landroid/graphics/Paint;

    const-string v3, "#AA0000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 342
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->N:Landroid/graphics/Paint;

    const-string v3, "#0000FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 345
    :cond_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v2

    sub-float v2, v3, v2

    goto :goto_0

    .line 299
    :cond_2
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 300
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 303
    :cond_3
    iget-boolean v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:Z

    if-eqz v2, :cond_5

    .line 308
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v2

    :goto_3
    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 309
    .restart local v0    # "alpha":I
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 310
    .local v1, "colorAlpha":I
    mul-int v2, v1, v0

    div-int/lit16 v1, v2, 0xff

    .line 311
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 312
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 315
    rsub-int v0, v0, 0xff

    .line 316
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->v:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 317
    mul-int v2, v1, v0

    div-int/lit16 v1, v2, 0xff

    .line 318
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->v:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->v:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->v:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 319
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 321
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    .line 308
    .end local v0    # "alpha":I
    .end local v1    # "colorAlpha":I
    :cond_4
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v2

    sub-float v2, v3, v2

    goto :goto_3

    .line 323
    :cond_5
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 335
    :cond_6
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->t:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->l:F

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->l:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setMeasuredDimension(II)V

    .line 202
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->onSizeChanged(IIII)V

    .line 253
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->d()V

    .line 256
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isClickable()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v6, v7

    .line 425
    :goto_0
    return v6

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 384
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->I:F

    sub-float v1, v8, v9

    .line 385
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->J:F

    sub-float v2, v8, v9

    .line 390
    .local v2, "deltaY":F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 392
    :pswitch_0
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->e()V

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->I:F

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->J:F

    .line 395
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->I:F

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->K:F

    .line 396
    invoke-virtual {p0, v6}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    goto :goto_0

    .line 400
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 401
    .local v5, "x":F
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v7

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->K:F

    sub-float v8, v5, v8

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->A:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 402
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->K:F

    goto :goto_0

    .line 407
    .end local v5    # "x":F
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    .line 408
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getStatusBasedOnPos()Z

    move-result v3

    .line 409
    .local v3, "nextStatus":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v4, v8

    .line 410
    .local v4, "time":F
    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->L:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-gez v8, :cond_2

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->L:I

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_2

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->M:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_2

    .line 411
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->performClick()Z

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v8

    if-eq v3, v8, :cond_3

    .line 414
    invoke-virtual {p0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->playSoundEffect(I)V

    .line 415
    invoke-virtual {p0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    .line 417
    :cond_3
    invoke-virtual {p0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Z)V

    goto/16 :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 455
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 1
    .param p1, "animationDuration"    # J

    .prologue
    .line 530
    iput-wide p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:J

    .line 531
    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "backColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    .line 573
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 577
    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1
    .param p1, "backColorRes"    # I

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    .line 582
    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    .line 556
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Z

    .line 557
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->d()V

    .line 558
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 559
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 560
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 561
    return-void

    .line 556
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackDrawableRes(I)V
    .locals 1
    .param p1, "backDrawableRes"    # I

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    return-void
.end method

.method public setBackMeasureRatio(F)V
    .locals 0
    .param p1, "backMeasureRatio"    # F

    .prologue
    .line 605
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:F

    .line 606
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 607
    return-void
.end method

.method public setBackRadius(F)V
    .locals 1
    .param p1, "backRadius"    # F

    .prologue
    .line 673
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:F

    .line 674
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Z

    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 677
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Z)V

    .line 492
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 493
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 496
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 497
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 500
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 501
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 502
    return-void

    .line 500
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawDebugRect(Z)V
    .locals 0
    .param p1, "drawDebugRect"    # Z

    .prologue
    .line 521
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    .line 522
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 523
    return-void
.end method

.method public setFadeBack(Z)V
    .locals 0
    .param p1, "fadeBack"    # Z

    .prologue
    .line 684
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:Z

    .line 685
    return-void
.end method

.method public final setProcess(F)V
    .locals 2
    .param p1, "process"    # F

    .prologue
    .line 443
    move v0, p1

    .line 444
    .local v0, "tp":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 445
    const/high16 v0, 0x3f800000    # 1.0f

    .line 449
    :cond_0
    :goto_0
    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->G:F

    .line 450
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 451
    return-void

    .line 446
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 447
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->k:Landroid/content/res/ColorStateList;

    .line 590
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    :cond_0
    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1
    .param p1, "thumbColorRes"    # I

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    .line 598
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumbDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    .line 539
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Z

    .line 540
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->d()V

    .line 541
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 542
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 543
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 544
    return-void

    .line 539
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbDrawableRes(I)V
    .locals 1
    .param p1, "thumbDrawableRes"    # I

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "thumbMargin"    # Landroid/graphics/RectF;

    .prologue
    const/4 v0, 0x0

    .line 614
    if-nez p1, :cond_0

    .line 615
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->a(FFFF)V

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->a(FFFF)V

    goto :goto_0
.end method

.method public setThumbRadius(F)V
    .locals 1
    .param p1, "thumbRadius"    # F

    .prologue
    .line 658
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->l:F

    .line 659
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Z

    if-nez v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 662
    :cond_0
    return-void
.end method

.method public setThumbSize(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "size"    # Landroid/graphics/PointF;

    .prologue
    .line 641
    if-nez p1, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v0, v1, v2

    .line 643
    .local v0, "defaultSize":F
    invoke-virtual {p0, v0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->a(FF)V

    .line 647
    .end local v0    # "defaultSize":F
    :goto_0
    return-void

    .line 645
    :cond_0
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->a(FF)V

    goto :goto_0
.end method

.method public setTintColor(I)V
    .locals 2
    .param p1, "tintColor"    # I

    .prologue
    const/4 v1, 0x0

    .line 692
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    .line 693
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    invoke-static {v0}, Lcom/kyleduo/switchbutton/b;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->k:Landroid/content/res/ColorStateList;

    .line 694
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    invoke-static {v0}, Lcom/kyleduo/switchbutton/b;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:Landroid/content/res/ColorStateList;

    .line 695
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Z

    .line 696
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Z

    .line 698
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 699
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 700
    return-void
.end method
