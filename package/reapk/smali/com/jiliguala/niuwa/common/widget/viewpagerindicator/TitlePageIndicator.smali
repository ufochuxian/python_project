.class public Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;,
        Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;,
        Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;,
        Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$a;
    }
.end annotation


# static fields
.field private static final a:F = 0.25f

.field private static final b:F = 0.05f

.field private static final c:Ljava/lang/String; = ""

.field private static final z:I = -0x1


# instance fields
.field private A:I

.field private B:F

.field private C:I

.field private D:Z

.field private E:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$a;

.field private F:Z

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Landroid/support/v4/view/ViewPager$f;

.field private f:I

.field private g:F

.field private h:I

.field private final i:Landroid/graphics/Paint;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Path;

.field private final n:Landroid/graphics/Rect;

.field private final o:Landroid/graphics/Paint;

.field private p:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field private q:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;

.field private final r:Landroid/graphics/Paint;

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 159
    const v0, 0x7f04023d

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 163
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    .line 124
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    .line 128
    new-instance v25, Landroid/graphics/Path;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    .line 129
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Rect;

    .line 130
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    .line 133
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->r:Landroid/graphics/Paint;

    .line 146
    const/high16 v25, -0x40800000    # -1.0f

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->B:F

    .line 147
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->C:I

    .line 152
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->F:Z

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->isInEditMode()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 222
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 169
    .local v23, "res":Landroid/content/res/Resources;
    const v25, 0x7f06006e

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 170
    .local v9, "defaultFooterColor":I
    const v25, 0x7f0700a8

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 171
    .local v13, "defaultFooterLineHeight":F
    const v25, 0x7f0a0007

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 172
    .local v11, "defaultFooterIndicatorStyle":I
    const v25, 0x7f0700a6

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 173
    .local v10, "defaultFooterIndicatorHeight":F
    const v25, 0x7f0700a7

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 174
    .local v12, "defaultFooterIndicatorUnderlinePadding":F
    const v25, 0x7f0700a9

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 175
    .local v14, "defaultFooterPadding":F
    const v25, 0x7f0a0008

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 176
    .local v15, "defaultLinePosition":I
    const v25, 0x7f06006f

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    .line 177
    .local v17, "defaultSelectedColor":I
    const v25, 0x7f050007

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 178
    .local v16, "defaultSelectedBold":Z
    const v25, 0x7f060070

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 179
    .local v18, "defaultTextColor":I
    const v25, 0x7f0700aa

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    .line 180
    .local v19, "defaultTextSize":F
    const v25, 0x7f0700ab

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    .line 181
    .local v20, "defaultTitlePadding":F
    const v25, 0x7f0700a5

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 182
    .local v8, "defaultClipPadding":F
    const v25, 0x7f0700ac

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    .line 185
    .local v21, "defaultTopPadding":F
    sget-object v25, Lcom/jiliguala/niuwa/R$styleable;->TitlePageIndicator:[I

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    move/from16 v3, p3

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 188
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->y:F

    .line 189
    const/16 v25, 0x6

    move/from16 v0, v25

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->fromValue(I)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->p:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 191
    const/16 v25, 0x5

    move/from16 v0, v25

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->s:F

    .line 192
    const/16 v25, 0x7

    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->t:F

    .line 194
    const/16 v25, 0x9

    move/from16 v0, v25

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->u:F

    .line 195
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;->fromValue(I)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->q:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;

    .line 196
    const/16 v25, 0xe

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->w:F

    .line 197
    const/16 v25, 0xd

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->v:F

    .line 198
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->x:F

    .line 199
    const/16 v25, 0xc

    move/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->l:I

    .line 200
    const/16 v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->k:I

    .line 201
    const/16 v25, 0xb

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->j:Z

    .line 203
    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v24

    .line 204
    .local v24, "textSize":F
    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    .line 205
    .local v22, "footerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->y:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->r:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->r:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 214
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 221
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v7}, Landroid/support/v4/view/bb;->a(Landroid/view/ViewConfiguration;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->A:I

    goto/16 :goto_0
.end method

.method private a(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "index"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 713
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 714
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 715
    .local v1, "title":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 716
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 717
    return-object v0
.end method

.method private a(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 877
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/af;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 878
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 879
    const-string v0, ""

    .line 881
    :cond_0
    return-object v0
.end method

.method private a(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/view/af;->getCount()I

    move-result v1

    .line 689
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v7

    .line 690
    .local v7, "width":I
    div-int/lit8 v3, v7, 0x2

    .line 691
    .local v3, "halfWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 692
    invoke-direct {p0, v4, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->a(ILandroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v0

    .line 693
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v8, v9

    .line 694
    .local v6, "w":I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v9

    .line 695
    .local v2, "h":I
    int-to-float v8, v3

    int-to-float v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->g:F

    sub-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 696
    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 697
    const/4 v8, 0x0

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 698
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 699
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 702
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "h":I
    .end local v6    # "w":I
    :cond_0
    return-object v5
.end method

.method private a(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "curViewBound"    # Landroid/graphics/Rect;
    .param p2, "curViewWidth"    # F
    .param p3, "right"    # I

    .prologue
    .line 664
    int-to-float v0, p3

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->x:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 665
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 666
    return-void
.end method

.method private b(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "curViewBound"    # Landroid/graphics/Rect;
    .param p2, "curViewWidth"    # F
    .param p3, "left"    # I

    .prologue
    .line 676
    int-to-float v0, p3

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->x:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 677
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->x:F

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 678
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 739
    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    .line 740
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->j:Z

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 745
    return-void
.end method

.method public getClipPadding()F
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->x:F

    return v0
.end method

.method public getFooterColor()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->s:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->u:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->p:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->y:F

    return v0
.end method

.method public getLinePosition()Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->q:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->l:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->k:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->v:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->w:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 43
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 359
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/af;->getCount()I

    move-result v15

    .line 365
    .local v15, "count":I
    if-eqz v15, :cond_0

    .line 370
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_2

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    .line 375
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v12

    .line 376
    .local v12, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 379
    .local v13, "boundsSize":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    if-lt v4, v13, :cond_3

    .line 380
    add-int/lit8 v4, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 384
    :cond_3
    add-int/lit8 v16, v15, -0x1

    .line 385
    .local v16, "countMinusOne":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v24, v4, v6

    .line 386
    .local v24, "halfWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v29

    .line 387
    .local v29, "left":I
    move/from16 v0, v29

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->x:F

    add-float v31, v4, v6

    .line 388
    .local v31, "leftClip":F
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v42

    .line 389
    .local v42, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v25

    .line 390
    .local v25, "height":I
    add-int v35, v29, v42

    .line 391
    .local v35, "right":I
    move/from16 v0, v35

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->x:F

    sub-float v37, v4, v6

    .line 393
    .local v37, "rightClip":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    move/from16 v34, v0

    .line 395
    .local v34, "page":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->g:F

    float-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_7

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->g:F

    move/from16 v33, v0

    .line 401
    .local v33, "offsetPercent":F
    :goto_1
    const/high16 v4, 0x3e800000    # 0.25f

    cmpg-float v4, v33, v4

    if-gtz v4, :cond_8

    const/16 v21, 0x1

    .line 402
    .local v21, "currentSelected":Z
    :goto_2
    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v4, v33, v4

    if-gtz v4, :cond_9

    const/16 v19, 0x1

    .line 403
    .local v19, "currentBold":Z
    :goto_3
    const/high16 v4, 0x3e800000    # 0.25f

    sub-float v4, v4, v33

    const/high16 v6, 0x3e800000    # 0.25f

    div-float v39, v4, v6

    .line 406
    .local v39, "selectedPercent":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Rect;

    .line 407
    .local v17, "curPageBound":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v18, v0

    .line 408
    .local v18, "curPageWidth":F
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v31

    if-gez v4, :cond_4

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/Rect;FI)V

    .line 412
    :cond_4
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v37

    if-lez v4, :cond_5

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Rect;FI)V

    .line 418
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    if-lez v4, :cond_a

    .line 419
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    add-int/lit8 v28, v4, -0x1

    .local v28, "i":I
    :goto_4
    if-ltz v28, :cond_a

    .line 420
    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 422
    .local v11, "bound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v31

    if-gez v4, :cond_6

    .line 423
    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int v41, v4, v6

    .line 425
    .local v41, "w":I
    move/from16 v0, v41

    int-to-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v11, v4, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/Rect;FI)V

    .line 427
    add-int/lit8 v4, v28, 0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/graphics/Rect;

    .line 429
    .local v36, "rightBound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr v4, v6

    move-object/from16 v0, v36

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_6

    .line 430
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v41

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->v:F

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 431
    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v41

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 419
    .end local v36    # "rightBound":Landroid/graphics/Rect;
    .end local v41    # "w":I
    :cond_6
    add-int/lit8 v28, v28, -0x1

    goto :goto_4

    .line 398
    .end local v11    # "bound":Landroid/graphics/Rect;
    .end local v17    # "curPageBound":Landroid/graphics/Rect;
    .end local v18    # "curPageWidth":F
    .end local v19    # "currentBold":Z
    .end local v21    # "currentSelected":Z
    .end local v28    # "i":I
    .end local v33    # "offsetPercent":F
    .end local v39    # "selectedPercent":F
    :cond_7
    add-int/lit8 v34, v34, 0x1

    .line 399
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->g:F

    sub-float v33, v4, v6

    .restart local v33    # "offsetPercent":F
    goto/16 :goto_1

    .line 401
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 402
    .restart local v21    # "currentSelected":Z
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 437
    .restart local v17    # "curPageBound":Landroid/graphics/Rect;
    .restart local v18    # "curPageWidth":F
    .restart local v19    # "currentBold":Z
    .restart local v39    # "selectedPercent":F
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    move/from16 v0, v16

    if-ge v4, v0, :cond_c

    .line 438
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    add-int/lit8 v28, v4, 0x1

    .restart local v28    # "i":I
    :goto_5
    move/from16 v0, v28

    if-ge v0, v15, :cond_c

    .line 439
    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 441
    .restart local v11    # "bound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v37

    if-lez v4, :cond_b

    .line 442
    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int v41, v4, v6

    .line 444
    .restart local v41    # "w":I
    move/from16 v0, v41

    int-to-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v11, v4, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Rect;FI)V

    .line 446
    add-int/lit8 v4, v28, -0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/graphics/Rect;

    .line 448
    .local v30, "leftBound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->v:F

    sub-float/2addr v4, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_b

    .line 449
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 450
    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v41

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 438
    .end local v30    # "leftBound":Landroid/graphics/Rect;
    .end local v41    # "w":I
    :cond_b
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 457
    .end local v11    # "bound":Landroid/graphics/Rect;
    .end local v28    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->k:I

    ushr-int/lit8 v14, v4, 0x18

    .line 458
    .local v14, "colorTextAlpha":I
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_6
    move/from16 v0, v28

    if-ge v0, v15, :cond_14

    .line 460
    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 462
    .restart local v11    # "bound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->left:I

    move/from16 v0, v29

    if-le v4, v0, :cond_d

    iget v4, v11, Landroid/graphics/Rect;->left:I

    move/from16 v0, v35

    if-lt v4, v0, :cond_e

    :cond_d
    iget v4, v11, Landroid/graphics/Rect;->right:I

    move/from16 v0, v29

    if-le v4, v0, :cond_11

    iget v4, v11, Landroid/graphics/Rect;->right:I

    move/from16 v0, v35

    if-ge v4, v0, :cond_11

    .line 463
    :cond_e
    move/from16 v0, v28

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    const/16 v20, 0x1

    .line 464
    .local v20, "currentPage":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->a(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 467
    .local v5, "pageTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    if-eqz v20, :cond_13

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->j:Z

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->k:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    if-eqz v20, :cond_f

    if-eqz v21, :cond_f

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    int-to-float v6, v14

    mul-float v6, v6, v39

    float-to-int v6, v6

    sub-int v6, v14, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 477
    :cond_f
    add-int/lit8 v4, v13, -0x1

    move/from16 v0, v28

    if-ge v0, v4, :cond_10

    .line 478
    add-int/lit8 v4, v28, 0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/graphics/Rect;

    .line 480
    .restart local v36    # "rightBound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr v4, v6

    move-object/from16 v0, v36

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_10

    .line 481
    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int v41, v4, v6

    .line 482
    .restart local v41    # "w":I
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v41

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->v:F

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 483
    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v41

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 486
    .end local v36    # "rightBound":Landroid/graphics/Rect;
    .end local v41    # "w":I
    :cond_10
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v8, v4

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->w:F

    add-float/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 489
    if-eqz v20, :cond_11

    if-eqz v21, :cond_11

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->l:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->l:I

    ushr-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    mul-float v6, v6, v39

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 492
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v8, v4

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->w:F

    add-float/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 458
    .end local v5    # "pageTitle":Ljava/lang/CharSequence;
    .end local v20    # "currentPage":Z
    :cond_11
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .line 463
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 467
    .restart local v5    # "pageTitle":Ljava/lang/CharSequence;
    .restart local v20    # "currentPage":Z
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 498
    .end local v5    # "pageTitle":Ljava/lang/CharSequence;
    .end local v11    # "bound":Landroid/graphics/Rect;
    .end local v20    # "currentPage":Z
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->y:F

    move/from16 v23, v0

    .line 499
    .local v23, "footerLineHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->s:F

    move/from16 v22, v0

    .line 500
    .local v22, "footerIndicatorLineHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->q:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;->Top:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;

    if-ne v4, v6, :cond_15

    .line 501
    const/16 v25, 0x0

    .line 502
    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .line 503
    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    .line 507
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v23, v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move/from16 v0, v42

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v23, v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 513
    move/from16 v0, v25

    int-to-float v4, v0

    sub-float v26, v4, v23

    .line 514
    .local v26, "heightMinusLine":F
    sget-object v4, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$1;->a:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->p:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 516
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    sub-float v6, v26, v22

    move/from16 v0, v24

    invoke-virtual {v4, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    add-float v6, v24, v22

    move/from16 v0, v26

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    sub-float v6, v24, v22

    move/from16 v0, v26

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->r:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 525
    :pswitch_1
    if-eqz v21, :cond_0

    move/from16 v0, v34

    if-ge v0, v13, :cond_0

    .line 529
    move/from16 v0, v34

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/graphics/Rect;

    .line 530
    .local v40, "underlineBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v40

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->t:F

    add-float v38, v4, v6

    .line 531
    .local v38, "rightPlusPadding":F
    move-object/from16 v0, v40

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->t:F

    sub-float v32, v4, v6

    .line 532
    .local v32, "leftMinusPadding":F
    sub-float v27, v26, v22

    .line 534
    .local v27, "heightMinusLineMinusIndicator":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->r:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, v39

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->r:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->r:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 806
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 810
    .local v3, "measuredWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 811
    .local v1, "heightSpecMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_1

    .line 813
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v0, v4

    .line 823
    .local v0, "height":F
    :cond_0
    :goto_0
    float-to-int v2, v0

    .line 825
    .local v2, "measuredHeight":I
    invoke-virtual {p0, v3, v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    .line 826
    return-void

    .line 816
    .end local v0    # "height":F
    .end local v2    # "measuredHeight":I
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 817
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 818
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->y:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->w:F

    add-float v0, v4, v5

    .line 819
    .restart local v0    # "height":F
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->p:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v5, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    if-eq v4, v5, :cond_0

    .line 820
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v0, v4

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 768
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->h:I

    .line 770
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageScrollStateChanged(I)V

    .line 773
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 777
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    .line 778
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->g:F

    .line 779
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 781
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->onPageScrolled(IFI)V

    .line 784
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 788
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->h:I

    if-nez v0, :cond_0

    .line 789
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    .line 790
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageSelected(I)V

    .line 796
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 830
    move-object v0, p1

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;

    .line 831
    .local v0, "savedState":Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 832
    iget v1, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;->a:I

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    .line 833
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    .line 834
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 838
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 839
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;-><init>(Landroid/os/Parcelable;)V

    .line 840
    .local v0, "savedState":Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    iput v2, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;->a:I

    .line 841
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 549
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 550
    const/16 v17, 0x1

    .line 645
    :goto_0
    return v17

    .line 552
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/af;->getCount()I

    move-result v17

    if-nez v17, :cond_2

    .line 553
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 556
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    .line 557
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 645
    :cond_3
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 559
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->C:I

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->B:F

    goto :goto_1

    .line 564
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->C:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 565
    .local v3, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 566
    .local v16, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->B:F

    move/from16 v17, v0

    sub-float v5, v16, v17

    .line 568
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->D:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 569
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->A:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 570
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->D:Z

    .line 574
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->D:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 575
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->B:F

    .line 576
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->F:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 578
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto/16 :goto_1

    .line 588
    .end local v3    # "activePointerIndex":I
    .end local v5    # "deltaX":F
    .end local v16    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->D:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/af;->getCount()I

    move-result v4

    .line 590
    .local v4, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v15

    .line 591
    .local v15, "width":I
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v17, v18

    .line 592
    .local v7, "halfWidth":F
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40c00000    # 6.0f

    div-float v14, v17, v18

    .line 593
    .local v14, "sixthWidth":F
    sub-float v9, v7, v14

    .line 594
    .local v9, "leftThird":F
    add-float v13, v7, v14

    .line 595
    .local v13, "rightThird":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 597
    .local v6, "eventX":F
    cmpg-float v17, v6, v9

    if-gez v17, :cond_7

    .line 598
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    move/from16 v17, v0

    if-lez v17, :cond_a

    .line 599
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_6

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 602
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 604
    :cond_7
    cmpl-float v17, v6, v13

    if-lez v17, :cond_9

    .line 605
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    move/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 606
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_8

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 609
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 613
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->E:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$a;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_a

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->E:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$a;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$a;->a(I)V

    .line 619
    .end local v4    # "count":I
    .end local v6    # "eventX":F
    .end local v7    # "halfWidth":F
    .end local v9    # "leftThird":F
    .end local v13    # "rightThird":F
    .end local v14    # "sixthWidth":F
    .end local v15    # "width":I
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->D:Z

    .line 620
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->C:I

    .line 621
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->F:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 628
    :pswitch_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v8

    .line 629
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->B:F

    .line 630
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->C:I

    goto/16 :goto_1

    .line 635
    .end local v8    # "index":I
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v12

    .line 636
    .local v12, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 637
    .local v11, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->C:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v11, v0, :cond_b

    .line 638
    if-nez v12, :cond_c

    const/4 v10, 0x1

    .line 639
    .local v10, "newPointerIndex":I
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->C:I

    .line 641
    .end local v10    # "newPointerIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->C:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->B:F

    goto/16 :goto_1

    .line 638
    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setClipPadding(F)V
    .locals 0
    .param p1, "clipPadding"    # F

    .prologue
    .line 340
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->x:F

    .line 341
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 342
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 758
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 762
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->f:I

    .line 763
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 764
    return-void
.end method

.method public setFooterColor(I)V
    .locals 1
    .param p1, "footerColor"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 232
    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .locals 0
    .param p1, "footerTriangleHeight"    # F

    .prologue
    .line 249
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->s:F

    .line 250
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 251
    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .locals 0
    .param p1, "footerIndicatorPadding"    # F

    .prologue
    .line 258
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->u:F

    .line 259
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 260
    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;)V
    .locals 0
    .param p1, "indicatorStyle"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->p:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 268
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 269
    return-void
.end method

.method public setFooterLineHeight(F)V
    .locals 2
    .param p1, "footerLineHeight"    # F

    .prologue
    .line 239
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->y:F

    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->y:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 241
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 242
    return-void
.end method

.method public setLinePosition(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;)V
    .locals 0
    .param p1, "linePosition"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->q:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$LinePosition;

    .line 277
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 278
    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$a;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->E:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$a;

    .line 754
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$f;

    .prologue
    .line 800
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->e:Landroid/support/v4/view/ViewPager$f;

    .line 801
    return-void
.end method

.method public setScrollEnable(Z)V
    .locals 0
    .param p1, "scrollEnable"    # Z

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->F:Z

    .line 654
    return-void
.end method

.method public setSelectedBold(Z)V
    .locals 0
    .param p1, "selectedBold"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->j:Z

    .line 295
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 296
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1, "selectedColor"    # I

    .prologue
    .line 285
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->l:I

    .line 286
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 287
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->k:I

    .line 305
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 306
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .prologue
    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 314
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 315
    return-void
.end method

.method public setTitlePadding(F)V
    .locals 0
    .param p1, "titlePadding"    # F

    .prologue
    .line 322
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->v:F

    .line 323
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 324
    return-void
.end method

.method public setTopPadding(F)V
    .locals 0
    .param p1, "topPadding"    # F

    .prologue
    .line 331
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->w:F

    .line 332
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 333
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 346
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 347
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 734
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 728
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    if-nez v0, :cond_2

    .line 729
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_2
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    .line 732
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 733
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->invalidate()V

    goto :goto_0
.end method
