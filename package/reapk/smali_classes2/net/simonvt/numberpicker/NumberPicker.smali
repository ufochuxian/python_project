.class public Lnet/simonvt/numberpicker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/numberpicker/NumberPicker$a;,
        Lnet/simonvt/numberpicker/NumberPicker$j;,
        Lnet/simonvt/numberpicker/NumberPicker$b;,
        Lnet/simonvt/numberpicker/NumberPicker$CustomEditText;,
        Lnet/simonvt/numberpicker/NumberPicker$c;,
        Lnet/simonvt/numberpicker/NumberPicker$i;,
        Lnet/simonvt/numberpicker/NumberPicker$h;,
        Lnet/simonvt/numberpicker/NumberPicker$e;,
        Lnet/simonvt/numberpicker/NumberPicker$d;,
        Lnet/simonvt/numberpicker/NumberPicker$f;,
        Lnet/simonvt/numberpicker/NumberPicker$g;,
        Lnet/simonvt/numberpicker/NumberPicker$k;
    }
.end annotation


# static fields
.field private static final a:I = 0x3

.field private static final as:[C

.field private static final b:J = 0x12cL

.field private static final c:I = 0x1

.field private static final d:I = 0x8

.field private static final e:I = 0x320

.field private static final f:I = 0x12c

.field private static final g:F = 0.9f

.field private static final h:I = 0x2

.field private static final i:I = 0x30

.field private static final j:I = 0x0

.field private static final k:I = -0x1

.field private static final l:Lnet/simonvt/numberpicker/NumberPicker$k;


# instance fields
.field private A:I

.field private B:Lnet/simonvt/numberpicker/NumberPicker$g;

.field private C:Lnet/simonvt/numberpicker/NumberPicker$f;

.field private D:Lnet/simonvt/numberpicker/NumberPicker$d;

.field private E:J

.field private final F:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final G:[I

.field private final H:Landroid/graphics/Paint;

.field private final I:Landroid/graphics/drawable/Drawable;

.field private J:I

.field private K:I

.field private L:I

.field private final M:Lnet/simonvt/numberpicker/c;

.field private final N:Lnet/simonvt/numberpicker/c;

.field private O:I

.field private P:Lnet/simonvt/numberpicker/NumberPicker$i;

.field private Q:Lnet/simonvt/numberpicker/NumberPicker$c;

.field private R:Lnet/simonvt/numberpicker/NumberPicker$b;

.field private S:F

.field private T:J

.field private U:F

.field private V:Landroid/view/VelocityTracker;

.field private W:I

.field private aa:I

.field private ab:I

.field private ac:Z

.field private final ad:I

.field private final ae:Z

.field private final af:Landroid/graphics/drawable/Drawable;

.field private final ag:I

.field private ah:I

.field private ai:Z

.field private aj:Z

.field private ak:I

.field private al:I

.field private am:I

.field private an:Z

.field private ao:Z

.field private ap:Lnet/simonvt/numberpicker/NumberPicker$j;

.field private final aq:Lnet/simonvt/numberpicker/NumberPicker$h;

.field private ar:I

.field private final m:Landroid/widget/ImageButton;

.field private final n:Landroid/widget/ImageButton;

.field private final o:Landroid/widget/EditText;

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private t:I

.field private final u:Z

.field private final v:I

.field private w:I

.field private x:[Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$k;

    invoke-direct {v0}, Lnet/simonvt/numberpicker/NumberPicker$k;-><init>()V

    sput-object v0, Lnet/simonvt/numberpicker/NumberPicker;->l:Lnet/simonvt/numberpicker/NumberPicker$k;

    .line 1971
    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/simonvt/numberpicker/NumberPicker;->as:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 552
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 561
    sget v0, Lnet/simonvt/numberpicker/b$a;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 562
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 572
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 300
    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/simonvt/numberpicker/NumberPicker;->E:J

    .line 305
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->F:Landroid/util/SparseArray;

    .line 310
    const/4 v15, 0x3

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->G:[I

    .line 330
    const/high16 v15, -0x80000000

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    .line 431
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ah:I

    .line 482
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ar:I

    .line 575
    sget-object v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker:[I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v16

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 577
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    sget v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker_internalLayout:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 580
    .local v11, "layoutResId":I
    if-eqz v11, :cond_0

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    .line 582
    sget v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker_solidColor:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ad:I

    .line 584
    sget v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker_selectionDivider:I

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->af:Landroid/graphics/drawable/Drawable;

    .line 586
    const/4 v15, 0x1

    const/high16 v16, 0x40000000    # 2.0f

    .line 588
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    .line 586
    invoke-static/range {v15 .. v17}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    float-to-int v9, v15

    .line 589
    .local v9, "defSelectionDividerHeight":I
    sget v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker_selectionDividerHeight:I

    invoke-virtual {v4, v15, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ag:I

    .line 592
    const/4 v15, 0x1

    const/high16 v16, 0x42400000    # 48.0f

    .line 594
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    .line 592
    invoke-static/range {v15 .. v17}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    float-to-int v8, v15

    .line 595
    .local v8, "defSelectionDividerDistance":I
    sget v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker_selectionDividersDistance:I

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    .line 598
    sget v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker_internalMinHeight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->q:I

    .line 601
    sget v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker_internalMaxHeight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->r:I

    .line 603
    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->q:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->r:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->q:I

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/NumberPicker;->r:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 605
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "minHeight > maxHeight"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 580
    .end local v8    # "defSelectionDividerDistance":I
    .end local v9    # "defSelectionDividerHeight":I
    :cond_0
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 608
    .restart local v8    # "defSelectionDividerDistance":I
    .restart local v9    # "defSelectionDividerHeight":I
    :cond_1
    sget v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker_internalMinWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->s:I

    .line 611
    sget v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker_internalMaxWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->t:I

    .line 613
    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->s:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->t:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->s:I

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/numberpicker/NumberPicker;->t:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 615
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "minWidth > maxWidth"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 618
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->t:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->u:Z

    .line 620
    sget v15, Lnet/simonvt/numberpicker/b$g;->NumberPicker_virtualButtonPressedDrawable:I

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->I:Landroid/graphics/drawable/Drawable;

    .line 623
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 625
    new-instance v15, Lnet/simonvt/numberpicker/NumberPicker$h;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lnet/simonvt/numberpicker/NumberPicker$h;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->aq:Lnet/simonvt/numberpicker/NumberPicker$h;

    .line 632
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v15, :cond_5

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/simonvt/numberpicker/NumberPicker;->setWillNotDraw(Z)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 636
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 638
    new-instance v12, Lnet/simonvt/numberpicker/NumberPicker$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lnet/simonvt/numberpicker/NumberPicker$1;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 650
    .local v12, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v13, Lnet/simonvt/numberpicker/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnet/simonvt/numberpicker/NumberPicker$2;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 664
    .local v13, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v15, :cond_6

    .line 665
    sget v15, Lnet/simonvt/numberpicker/b$d;->np__increment:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->m:Landroid/widget/ImageButton;

    .line 666
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->m:Landroid/widget/ImageButton;

    invoke-virtual {v15, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->m:Landroid/widget/ImageButton;

    invoke-virtual {v15, v13}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 673
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v15, :cond_7

    .line 674
    sget v15, Lnet/simonvt/numberpicker/b$d;->np__decrement:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->n:Landroid/widget/ImageButton;

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->n:Landroid/widget/ImageButton;

    invoke-virtual {v15, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->n:Landroid/widget/ImageButton;

    invoke-virtual {v15, v13}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 682
    :goto_4
    sget v15, Lnet/simonvt/numberpicker/b$d;->np__numberpicker_input:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    .line 683
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    new-instance v16, Lnet/simonvt/numberpicker/NumberPicker$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker$3;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lnet/simonvt/numberpicker/NumberPicker$e;

    invoke-direct/range {v18 .. v19}, Lnet/simonvt/numberpicker/NumberPicker$e;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    aput-object v18, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 698
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    const/16 v16, 0x6

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 701
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 702
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    .line 703
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->aa:I

    .line 704
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v15

    div-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ab:I

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTextSize()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->v:I

    .line 709
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 710
    .local v14, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 711
    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 712
    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->v:I

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 713
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 714
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 715
    .local v6, "colors":Landroid/content/res/ColorStateList;
    sget-object v15, Lnet/simonvt/numberpicker/NumberPicker;->ENABLED_STATE_SET:[I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 716
    .local v5, "color":I
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 717
    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->H:Landroid/graphics/Paint;

    .line 720
    new-instance v15, Lnet/simonvt/numberpicker/c;

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-direct/range {v15 .. v18}, Lnet/simonvt/numberpicker/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    .line 721
    new-instance v15, Lnet/simonvt/numberpicker/c;

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v16

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v18, 0x40200000    # 2.5f

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v15 .. v17}, Lnet/simonvt/numberpicker/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->N:Lnet/simonvt/numberpicker/c;

    .line 723
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    .line 725
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 727
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getImportantForAccessibility()I

    move-result v15

    if-nez v15, :cond_3

    .line 728
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/simonvt/numberpicker/NumberPicker;->setImportantForAccessibility(I)V

    .line 731
    :cond_3
    return-void

    .line 618
    .end local v5    # "color":I
    .end local v6    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "configuration":Landroid/view/ViewConfiguration;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v13    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v14    # "paint":Landroid/graphics/Paint;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 632
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 669
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v13    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->m:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 678
    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->n:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method private a(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1529
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1540
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1532
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1533
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1534
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1542
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1538
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1540
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1534
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 1580
    move v0, p0

    .line 1581
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1582
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1583
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 1598
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 1585
    :sswitch_0
    move v0, p0

    .line 1586
    goto :goto_0

    .line 1588
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 1589
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 1591
    :cond_0
    move v0, p0

    .line 1593
    goto :goto_0

    .line 1595
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 1583
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1924
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1926
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1950
    :goto_0
    return v1

    .line 1931
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1933
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1934
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1935
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1931
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1944
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1927
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 1950
    :goto_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    goto :goto_0

    .line 1945
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;I)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->c(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1717
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ah:I

    if-ne v0, p1, :cond_1

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ah:I

    .line 1721
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->C:Lnet/simonvt/numberpicker/NumberPicker$f;

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->C:Lnet/simonvt/numberpicker/NumberPicker$f;

    invoke-interface {v0, p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$f;->a(Lnet/simonvt/numberpicker/NumberPicker;I)V

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1626
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    if-ne v1, p1, :cond_0

    .line 1644
    :goto_0
    return-void

    .line 1630
    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-eqz v1, :cond_2

    .line 1631
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->c(I)I

    move-result p1

    .line 1636
    :goto_1
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    .line 1637
    .local v0, "previous":I
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    .line 1638
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    .line 1639
    if-eqz p2, :cond_1

    .line 1640
    invoke-direct {p0, v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->b(II)V

    .line 1642
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1643
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1633
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1634
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1813
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1814
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1816
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    .line 1822
    :goto_0
    return-void

    .line 1819
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    .line 1820
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->a(IZ)V

    goto :goto_0
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->c()V

    return-void
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->c(II)V

    return-void
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->a(Z)V

    return-void
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;ZJ)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker;->a(ZJ)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1654
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-eqz v0, :cond_2

    .line 1655
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1656
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1657
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->N:Lnet/simonvt/numberpicker/c;

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/c;)Z

    .line 1659
    :cond_0
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:I

    .line 1660
    if-eqz p1, :cond_1

    .line 1661
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/numberpicker/c;->a(IIIII)V

    .line 1665
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    .line 1673
    :goto_1
    return-void

    .line 1663
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/numberpicker/c;->a(IIIII)V

    goto :goto_0

    .line 1667
    :cond_2
    if-eqz p1, :cond_3

    .line 1668
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->a(IZ)V

    goto :goto_1

    .line 1670
    :cond_3
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->a(IZ)V

    goto :goto_1
.end method

.method private a(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1864
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Lnet/simonvt/numberpicker/NumberPicker$c;

    if-nez v0, :cond_0

    .line 1865
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$c;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Lnet/simonvt/numberpicker/NumberPicker$c;

    .line 1869
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-static {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$c;->a(Lnet/simonvt/numberpicker/NumberPicker$c;Z)V

    .line 1870
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-virtual {p0, v0, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1871
    return-void

    .line 1867
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1758
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1759
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1761
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1762
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    if-le v1, v2, :cond_1

    .line 1763
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    .line 1765
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1766
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->d(I)V

    .line 1767
    return-void
.end method

.method private a(Lnet/simonvt/numberpicker/c;)Z
    .locals 7
    .param p1, "scroller"    # Lnet/simonvt/numberpicker/c;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 789
    invoke-virtual {p1, v3}, Lnet/simonvt/numberpicker/c;->a(Z)V

    .line 790
    invoke-virtual {p1}, Lnet/simonvt/numberpicker/c;->i()I

    move-result v5

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/c;->d()I

    move-result v6

    sub-int v0, v5, v6

    .line 791
    .local v0, "amountToScroll":I
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    add-int/2addr v5, v0

    iget v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    rem-int v1, v5, v6

    .line 792
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    sub-int v2, v5, v1

    .line 793
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 794
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 795
    if-lez v2, :cond_1

    .line 796
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    sub-int/2addr v2, v5

    .line 801
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 802
    invoke-virtual {p0, v4, v0}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    .line 805
    :goto_1
    return v3

    .line 798
    :cond_1
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 805
    goto :goto_1
.end method

.method static synthetic a()[C
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lnet/simonvt/numberpicker/NumberPicker;->as:[C

    return-object v0
.end method

.method private b(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1558
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1559
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1560
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lnet/simonvt/numberpicker/NumberPicker;->a(III)I

    move-result p2

    .line 1562
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method static synthetic b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lnet/simonvt/numberpicker/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1191
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1192
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1193
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-eqz v1, :cond_0

    .line 1194
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1196
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1197
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1199
    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1730
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:I

    .line 1732
    if-lez p1, :cond_0

    .line 1733
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lnet/simonvt/numberpicker/c;->a(IIIIIIII)V

    .line 1738
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    .line 1739
    return-void

    .line 1735
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lnet/simonvt/numberpicker/c;->a(IIIIIIII)V

    goto :goto_0
.end method

.method private b(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1853
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lnet/simonvt/numberpicker/NumberPicker$g;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lnet/simonvt/numberpicker/NumberPicker$g;

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    invoke-interface {v0, p0, p1, v1}, Lnet/simonvt/numberpicker/NumberPicker$g;->a(Lnet/simonvt/numberpicker/NumberPicker;II)V

    .line 1856
    :cond_0
    return-void
.end method

.method private b(Lnet/simonvt/numberpicker/c;)V
    .locals 2
    .param p1, "scroller"    # Lnet/simonvt/numberpicker/c;

    .prologue
    .line 1701
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    if-ne p1, v0, :cond_2

    .line 1702
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1703
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    .line 1705
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(I)V

    .line 1711
    :cond_1
    :goto_0
    return-void

    .line 1707
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ah:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1708
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    goto :goto_0
.end method

.method private b([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1774
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1775
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1774
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1777
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1778
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    if-ge v1, v2, :cond_1

    .line 1779
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    .line 1781
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1782
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->d(I)V

    .line 1783
    return-void
.end method

.method static synthetic b(Lnet/simonvt/numberpicker/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->an:Z

    return p1
.end method

.method private c(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1745
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    if-le p1, v0, :cond_1

    .line 1746
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    sub-int v1, p1, v1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1750
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1747
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    if-ge p1, v0, :cond_0

    .line 1748
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int/2addr v1, p1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 1205
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1206
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1207
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1208
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-eqz v1, :cond_0

    .line 1209
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1212
    :cond_0
    return-void
.end method

.method private c(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 1958
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->P:Lnet/simonvt/numberpicker/NumberPicker$i;

    if-nez v0, :cond_0

    .line 1959
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$i;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->P:Lnet/simonvt/numberpicker/NumberPicker$i;

    .line 1963
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->P:Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-static {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$i;->a(Lnet/simonvt/numberpicker/NumberPicker$i;I)I

    .line 1964
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->P:Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-static {v0, p2}, Lnet/simonvt/numberpicker/NumberPicker$i;->b(Lnet/simonvt/numberpicker/NumberPicker$i;I)I

    .line 1965
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->P:Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1966
    return-void

    .line 1961
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->P:Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic c(Lnet/simonvt/numberpicker/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ao:Z

    return p1
.end method

.method static synthetic c(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    return v0
.end method

.method private d()V
    .locals 10

    .prologue
    .line 1218
    iget-boolean v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->u:Z

    if-nez v8, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    const/4 v4, 0x0

    .line 1222
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1223
    const/4 v3, 0x0

    .line 1224
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1225
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->H:Landroid/graphics/Paint;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->f(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1226
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1227
    move v3, v1

    .line 1224
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1230
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1231
    .local v5, "numberOfDigits":I
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    .line 1232
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1233
    add-int/lit8 v5, v5, 0x1

    .line 1234
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1236
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1246
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1247
    iget v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->t:I

    if-eq v8, v4, :cond_0

    .line 1248
    iget v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->s:I

    if-le v4, v8, :cond_8

    .line 1249
    iput v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->t:I

    .line 1253
    :goto_3
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1238
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    array-length v7, v8

    .line 1239
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1240
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->H:Landroid/graphics/Paint;

    iget-object v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1241
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1242
    float-to-int v4, v6

    .line 1239
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1251
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->s:I

    iput v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->t:I

    goto :goto_3
.end method

.method private d(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1790
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Landroid/util/SparseArray;

    .line 1791
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1792
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1806
    :goto_0
    return-void

    .line 1795
    :cond_0
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    if-le p1, v3, :cond_2

    .line 1796
    :cond_1
    const-string v2, ""

    .line 1805
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1798
    :cond_2
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1799
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int v1, p1, v3

    .line 1800
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1801
    goto :goto_1

    .line 1802
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->e(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static synthetic d(Lnet/simonvt/numberpicker/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ai:Z

    return p1
.end method

.method private e(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1809
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:Lnet/simonvt/numberpicker/NumberPicker$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:Lnet/simonvt/numberpicker/NumberPicker$d;

    invoke-interface {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$d;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->f(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 1606
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1607
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:[I

    .line 1608
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    .line 1609
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1610
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1611
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-eqz v4, :cond_0

    .line 1612
    invoke-direct {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->c(I)I

    move-result v2

    .line 1614
    :cond_0
    aput v2, v3, v1

    .line 1615
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lnet/simonvt/numberpicker/NumberPicker;->d(I)V

    .line 1609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1617
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method static synthetic e(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->an:Z

    return v0
.end method

.method static synthetic f(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->al:I

    return v0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 2660
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 7

    .prologue
    .line 1676
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1677
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:[I

    .line 1678
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:I

    mul-int v4, v5, v6

    .line 1679
    .local v4, "totalTextHeight":I
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1680
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1681
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->w:I

    .line 1682
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:I

    iget v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->w:I

    add-int/2addr v5, v6

    iput v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    .line 1685
    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1686
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    .line 1688
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    iput v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    .line 1689
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    .line 1690
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 1693
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1694
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setFadingEdgeLength(I)V

    .line 1695
    return-void
.end method

.method static synthetic g(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ao:Z

    return v0
.end method

.method private getSupportAccessibilityNodeProvider()Lnet/simonvt/numberpicker/NumberPicker$j;
    .locals 2

    .prologue
    .line 2205
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/numberpicker/NumberPicker$j;-><init>(Lnet/simonvt/numberpicker/NumberPicker;Lnet/simonvt/numberpicker/NumberPicker$1;)V

    return-object v0
.end method

.method public static final getTwoDigitFormatter()Lnet/simonvt/numberpicker/NumberPicker$d;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lnet/simonvt/numberpicker/NumberPicker;->l:Lnet/simonvt/numberpicker/NumberPicker$k;

    return-object v0
.end method

.method static synthetic h(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ak:I

    return v0
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 1838
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1841
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1842
    const/4 v1, 0x1

    .line 1845
    :goto_1
    return v1

    .line 1838
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 1845
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic i(Lnet/simonvt/numberpicker/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget-wide v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->E:J

    return-wide v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 1877
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Lnet/simonvt/numberpicker/NumberPicker$c;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1880
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 1887
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Lnet/simonvt/numberpicker/NumberPicker$b;

    if-nez v0, :cond_0

    .line 1888
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$b;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$b;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Lnet/simonvt/numberpicker/NumberPicker$b;

    .line 1892
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Lnet/simonvt/numberpicker/NumberPicker$b;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1893
    return-void

    .line 1890
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Lnet/simonvt/numberpicker/NumberPicker$b;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic j(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->b()V

    return-void
.end method

.method static synthetic k(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ag:I

    return v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Lnet/simonvt/numberpicker/NumberPicker$b;

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Lnet/simonvt/numberpicker/NumberPicker$b;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1902
    :cond_0
    return-void
.end method

.method static synthetic l(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    return v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Lnet/simonvt/numberpicker/NumberPicker$c;

    if-eqz v0, :cond_0

    .line 1909
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1911
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->P:Lnet/simonvt/numberpicker/NumberPicker$i;

    if-eqz v0, :cond_1

    .line 1912
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->P:Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1914
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Lnet/simonvt/numberpicker/NumberPicker$b;

    if-eqz v0, :cond_2

    .line 1915
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Lnet/simonvt/numberpicker/NumberPicker$b;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1917
    :cond_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->aq:Lnet/simonvt/numberpicker/NumberPicker$h;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker$h;->a()V

    .line 1918
    return-void
.end method

.method private m()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2054
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    sub-int v4, v0, v2

    .line 2055
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 2056
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:I

    .line 2057
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2058
    if-lez v4, :cond_2

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2060
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->N:Lnet/simonvt/numberpicker/c;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/numberpicker/c;->a(IIIII)V

    .line 2061
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    .line 2062
    const/4 v1, 0x1

    .line 2064
    :cond_1
    return v1

    .line 2058
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    goto :goto_0
.end method

.method static synthetic m(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    return v0
.end method

.method static synthetic n(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 96
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    return v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1047
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    .line 1048
    .local v1, "scroller":Lnet/simonvt/numberpicker/c;
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1049
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->N:Lnet/simonvt/numberpicker/c;

    .line 1050
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1054
    :cond_0
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/c;->j()Z

    .line 1055
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/c;->d()I

    move-result v0

    .line 1056
    .local v0, "currentScrollerY":I
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:I

    if-nez v2, :cond_1

    .line 1057
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/c;->g()I

    move-result v2

    iput v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:I

    .line 1059
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    .line 1060
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:I

    .line 1061
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1062
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/c;)V

    goto :goto_0

    .line 1064
    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x100

    const/16 v8, 0x80

    const/16 v7, 0x40

    const/4 v6, -0x1

    .line 997
    iget-boolean v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v4, :cond_0

    .line 998
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1042
    :goto_0
    return v4

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1004
    .local v1, "eventY":I
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->ak:I

    if-ge v1, v4, :cond_2

    .line 1005
    const/4 v2, 0x3

    .line 1011
    .local v2, "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 1012
    .local v0, "action":I
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getSupportAccessibilityNodeProvider()Lnet/simonvt/numberpicker/NumberPicker$j;

    move-result-object v3

    .line 1014
    .local v3, "provider":Lnet/simonvt/numberpicker/NumberPicker$j;
    packed-switch v0, :pswitch_data_0

    .line 1042
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Lnet/simonvt/numberpicker/NumberPicker$j;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1006
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->al:I

    if-le v1, v4, :cond_3

    .line 1007
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1009
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1016
    .restart local v0    # "action":I
    .restart local v3    # "provider":Lnet/simonvt/numberpicker/NumberPicker$j;
    :pswitch_1
    invoke-virtual {v3, v2, v8}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(II)V

    .line 1018
    iput v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->am:I

    .line 1019
    invoke-virtual {v3, v2, v7, v10}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1023
    :pswitch_2
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->am:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->am:I

    if-eq v4, v6, :cond_1

    .line 1025
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->am:I

    invoke-virtual {v3, v4, v9}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(II)V

    .line 1028
    invoke-virtual {v3, v2, v8}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(II)V

    .line 1030
    iput v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->am:I

    .line 1031
    invoke-virtual {v3, v2, v7, v10}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1036
    :pswitch_3
    invoke-virtual {v3, v2, v9}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(II)V

    .line 1038
    iput v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->am:I

    goto :goto_2

    .line 1014
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 948
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 949
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 980
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 952
    :sswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->l()V

    goto :goto_0

    .line 956
    :sswitch_1
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-eqz v1, :cond_0

    .line 959
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 961
    :pswitch_0
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    .line 962
    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 963
    :goto_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->requestFocus()Z

    .line 964
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ar:I

    .line 965
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->l()V

    .line 966
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->a(Z)V

    goto :goto_1

    .line 962
    :cond_3
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 967
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 973
    :pswitch_1
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ar:I

    if-ne v1, v0, :cond_0

    .line 974
    const/4 v1, -0x1

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ar:I

    goto :goto_1

    .line 949
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 937
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 943
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 940
    :pswitch_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->l()V

    goto :goto_0

    .line 937
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 986
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 992
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 989
    :pswitch_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->l()V

    goto :goto_0

    .line 986
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .prologue
    .line 1512
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v0, :cond_0

    .line 1513
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1518
    :goto_0
    return-object v0

    .line 1515
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ap:Lnet/simonvt/numberpicker/NumberPicker$j;

    if-nez v0, :cond_1

    .line 1516
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/numberpicker/NumberPicker$j;-><init>(Lnet/simonvt/numberpicker/NumberPicker;Lnet/simonvt/numberpicker/NumberPicker$1;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ap:Lnet/simonvt/numberpicker/NumberPicker$j;

    .line 1518
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ap:Lnet/simonvt/numberpicker/NumberPicker$j;

    iget-object v0, v0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1434
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1360
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1322
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1114
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ad:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1429
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1313
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1266
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1439
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->l()V

    .line 1440
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1444
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v11, :cond_1

    .line 1445
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v9, v11

    .line 1449
    .local v9, "x":F
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    int-to-float v10, v11

    .line 1452
    .local v10, "y":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->ah:I

    if-nez v11, :cond_3

    .line 1454
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->ao:Z

    if-eqz v11, :cond_2

    .line 1456
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->I:Landroid/graphics/drawable/Drawable;

    sget-object v12, Lnet/simonvt/numberpicker/NumberPicker;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1457
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->I:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ak:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->I:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1460
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->an:Z

    if-eqz v11, :cond_3

    .line 1462
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->I:Landroid/graphics/drawable/Drawable;

    sget-object v12, Lnet/simonvt/numberpicker/NumberPicker;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1463
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->I:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lnet/simonvt/numberpicker/NumberPicker;->al:I

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v14

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v15

    .line 1463
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->I:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1470
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/simonvt/numberpicker/NumberPicker;->G:[I

    .line 1471
    .local v6, "selectorIndices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v6

    if-ge v3, v11, :cond_6

    .line 1472
    aget v5, v6, v3

    .line 1473
    .local v5, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->F:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1479
    .local v4, "scrollSelectorValue":Ljava/lang/String;
    const/4 v11, 0x1

    if-ne v3, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_5

    .line 1480
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->H:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1482
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1471
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1486
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->af:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 1488
    move-object/from16 v0, p0

    iget v8, v0, Lnet/simonvt/numberpicker/NumberPicker;->ak:I

    .line 1489
    .local v8, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->ag:I

    add-int v2, v8, v11

    .line 1490
    .local v2, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->af:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v13

    invoke-virtual {v11, v12, v8, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->af:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1494
    move-object/from16 v0, p0

    iget v1, v0, Lnet/simonvt/numberpicker/NumberPicker;->al:I

    .line 1495
    .local v1, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->ag:I

    sub-int v7, v1, v11

    .line 1496
    .local v7, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->af:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v13

    invoke-virtual {v11, v12, v7, v13, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->af:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1503
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1504
    const-class v0, Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1505
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1506
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    add-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1507
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1508
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 810
    iget-boolean v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 858
    :goto_0
    return v1

    .line 813
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 814
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 858
    goto :goto_0

    .line 816
    :pswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->l()V

    .line 817
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:F

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->U:F

    .line 819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->T:J

    .line 820
    iput-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->ai:Z

    .line 821
    iput-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->aj:Z

    .line 823
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:F

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->ak:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 824
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->ah:I

    if-nez v3, :cond_2

    .line 825
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->aq:Lnet/simonvt/numberpicker/NumberPicker$h;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker$h;->a(I)V

    .line 835
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 836
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/c;->a()Z

    move-result v3

    if-nez v3, :cond_4

    .line 837
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    invoke-virtual {v3, v1}, Lnet/simonvt/numberpicker/c;->a(Z)V

    .line 838
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->N:Lnet/simonvt/numberpicker/c;

    invoke-virtual {v3, v1}, Lnet/simonvt/numberpicker/c;->a(Z)V

    .line 839
    invoke-direct {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->a(I)V

    goto :goto_0

    .line 828
    :cond_3
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:F

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->al:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 829
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->ah:I

    if-nez v3, :cond_2

    .line 830
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->aq:Lnet/simonvt/numberpicker/NumberPicker$h;

    invoke-virtual {v3, v1}, Lnet/simonvt/numberpicker/NumberPicker$h;->a(I)V

    goto :goto_1

    .line 840
    :cond_4
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->N:Lnet/simonvt/numberpicker/c;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/c;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 841
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:Lnet/simonvt/numberpicker/c;

    invoke-virtual {v2, v1}, Lnet/simonvt/numberpicker/c;->a(Z)V

    .line 842
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->N:Lnet/simonvt/numberpicker/c;

    invoke-virtual {v2, v1}, Lnet/simonvt/numberpicker/c;->a(Z)V

    goto :goto_0

    .line 843
    :cond_5
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:F

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->ak:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 844
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->c()V

    .line 846
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    .line 845
    invoke-direct {p0, v2, v4, v5}, Lnet/simonvt/numberpicker/NumberPicker;->a(ZJ)V

    goto/16 :goto_0

    .line 847
    :cond_6
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:F

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->al:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 848
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->c()V

    .line 850
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 849
    invoke-direct {p0, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->a(ZJ)V

    goto/16 :goto_0

    .line 852
    :cond_7
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->aj:Z

    .line 853
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->j()V

    goto/16 :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 735
    iget-boolean v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v8, :cond_1

    .line 736
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 740
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 743
    .local v6, "msrdHght":I
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 744
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 745
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 746
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 747
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 748
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 749
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 751
    if-eqz p1, :cond_0

    .line 753
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()V

    .line 754
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->g()V

    .line 755
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->ag:I

    sub-int/2addr v8, v9

    iput v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->ak:I

    .line 757
    iget v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->ak:I

    iget v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->ag:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    add-int/2addr v8, v9

    iput v8, p0, Lnet/simonvt/numberpicker/NumberPicker;->al:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 764
    iget-boolean v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v4, :cond_0

    .line 765
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 778
    :goto_0
    return-void

    .line 769
    :cond_0
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->t:I

    invoke-direct {p0, p1, v4}, Lnet/simonvt/numberpicker/NumberPicker;->a(II)I

    move-result v2

    .line 770
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->r:I

    invoke-direct {p0, p2, v4}, Lnet/simonvt/numberpicker/NumberPicker;->a(II)I

    move-result v1

    .line 771
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 773
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->s:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lnet/simonvt/numberpicker/NumberPicker;->b(III)I

    move-result v3

    .line 775
    .local v3, "widthSize":I
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->q:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lnet/simonvt/numberpicker/NumberPicker;->b(III)I

    move-result v0

    .line 777
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 863
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v14, :cond_1

    .line 864
    :cond_0
    const/4 v14, 0x0

    .line 931
    :goto_0
    return v14

    .line 866
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->V:Landroid/view/VelocityTracker;

    if-nez v14, :cond_2

    .line 867
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->V:Landroid/view/VelocityTracker;

    .line 869
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->V:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 870
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    and-int/lit16 v2, v14, 0xff

    .line 871
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 931
    :cond_3
    :goto_1
    const/4 v14, 0x1

    goto :goto_0

    .line 873
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->ai:Z

    if-nez v14, :cond_3

    .line 876
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 877
    .local v3, "currentMoveY":F
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->ah:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_5

    .line 878
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->S:F

    sub-float v14, v3, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-int v4, v14

    .line 879
    .local v4, "deltaDownY":I
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    if-le v4, v14, :cond_4

    .line 880
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->l()V

    .line 881
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnet/simonvt/numberpicker/NumberPicker;->a(I)V

    .line 888
    .end local v4    # "deltaDownY":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iput v3, v0, Lnet/simonvt/numberpicker/NumberPicker;->U:F

    goto :goto_1

    .line 884
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->U:F

    sub-float v14, v3, v14

    float-to-int v5, v14

    .line 885
    .local v5, "deltaMoveY":I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_2

    .line 891
    .end local v3    # "currentMoveY":F
    .end local v5    # "deltaMoveY":I
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->k()V

    .line 892
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->i()V

    .line 893
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->aq:Lnet/simonvt/numberpicker/NumberPicker$h;

    invoke-virtual {v14}, Lnet/simonvt/numberpicker/NumberPicker$h;->a()V

    .line 894
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/simonvt/numberpicker/NumberPicker;->V:Landroid/view/VelocityTracker;

    .line 895
    .local v11, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->ab:I

    int-to-float v15, v15

    invoke-virtual {v11, v14, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 896
    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v14

    float-to-int v9, v14

    .line 897
    .local v9, "initialVelocity":I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->aa:I

    if-le v14, v15, :cond_6

    .line 898
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lnet/simonvt/numberpicker/NumberPicker;->b(I)V

    .line 899
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnet/simonvt/numberpicker/NumberPicker;->a(I)V

    .line 927
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->V:Landroid/view/VelocityTracker;

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->recycle()V

    .line 928
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->V:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 901
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v8, v14

    .line 902
    .local v8, "eventY":I
    int-to-float v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/numberpicker/NumberPicker;->S:F

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-int v5, v14

    .line 903
    .restart local v5    # "deltaMoveY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/simonvt/numberpicker/NumberPicker;->T:J

    move-wide/from16 v16, v0

    sub-long v6, v14, v16

    .line 904
    .local v6, "deltaTime":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v14

    int-to-long v12, v14

    .line 905
    .local v12, "tapTimeout":J
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    if-gt v5, v14, :cond_a

    .line 906
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->aj:Z

    if-eqz v14, :cond_8

    .line 907
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->aj:Z

    .line 908
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->b()V

    .line 925
    :cond_7
    :goto_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnet/simonvt/numberpicker/NumberPicker;->a(I)V

    goto :goto_3

    .line 910
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    div-int v14, v8, v14

    add-int/lit8 v10, v14, -0x1

    .line 912
    .local v10, "selectorIndexOffset":I
    if-lez v10, :cond_9

    .line 913
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnet/simonvt/numberpicker/NumberPicker;->a(Z)V

    .line 914
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->aq:Lnet/simonvt/numberpicker/NumberPicker$h;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lnet/simonvt/numberpicker/NumberPicker$h;->b(I)V

    goto :goto_4

    .line 916
    :cond_9
    if-gez v10, :cond_7

    .line 917
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lnet/simonvt/numberpicker/NumberPicker;->a(Z)V

    .line 918
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/numberpicker/NumberPicker;->aq:Lnet/simonvt/numberpicker/NumberPicker$h;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lnet/simonvt/numberpicker/NumberPicker$h;->b(I)V

    goto :goto_4

    .line 923
    .end local v10    # "selectorIndexOffset":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lnet/simonvt/numberpicker/NumberPicker;->m()Z

    goto :goto_4

    .line 871
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 1082
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:[I

    .line 1083
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    if-gt v1, v2, :cond_1

    .line 1085
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    if-lt v1, v2, :cond_2

    .line 1090
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    goto :goto_0

    .line 1093
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    add-int/2addr v1, p2

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    .line 1094
    :cond_3
    :goto_1
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->w:I

    if-le v1, v2, :cond_4

    .line 1095
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    sub-int/2addr v1, v2

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    .line 1096
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->b([I)V

    .line 1097
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lnet/simonvt/numberpicker/NumberPicker;->a(IZ)V

    .line 1098
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    if-gt v1, v2, :cond_3

    .line 1099
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    goto :goto_1

    .line 1102
    :cond_4
    :goto_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->w:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1103
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:I

    add-int/2addr v1, v2

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    .line 1104
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a([I)V

    .line 1105
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lnet/simonvt/numberpicker/NumberPicker;->a(IZ)V

    .line 1106
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    if-lt v1, v2, :cond_4

    .line 1107
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1411
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1414
    :cond_0
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    .line 1415
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1422
    :goto_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    .line 1423
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1424
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->d()V

    goto :goto_0

    .line 1420
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1070
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1071
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1074
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Z

    if-nez v0, :cond_1

    .line 1075
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1077
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1078
    return-void
.end method

.method public setFormatter(Lnet/simonvt/numberpicker/NumberPicker$d;)V
    .locals 1
    .param p1, "formatter"    # Lnet/simonvt/numberpicker/NumberPicker$d;

    .prologue
    .line 1147
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:Lnet/simonvt/numberpicker/NumberPicker$d;

    if-ne p1, v0, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1150
    :cond_0
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:Lnet/simonvt/numberpicker/NumberPicker$d;

    .line 1151
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1152
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1374
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    if-ne v1, p1, :cond_0

    .line 1390
    :goto_0
    return-void

    .line 1377
    :cond_0
    if-gez p1, :cond_1

    .line 1378
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1380
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    .line 1381
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    if-ge v1, v2, :cond_2

    .line 1382
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    .line 1384
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1385
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1386
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1387
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    .line 1388
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->d()V

    .line 1389
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1384
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1336
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    if-ne v1, p1, :cond_0

    .line 1352
    :goto_0
    return-void

    .line 1339
    :cond_0
    if-gez p1, :cond_1

    .line 1340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1342
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    .line 1343
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    if-le v1, v2, :cond_2

    .line 1344
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    .line 1346
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1347
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1348
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1349
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    .line 1350
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->d()V

    .line 1351
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1346
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1304
    iput-wide p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->E:J

    .line 1305
    return-void
.end method

.method public setOnScrollListener(Lnet/simonvt/numberpicker/NumberPicker$f;)V
    .locals 0
    .param p1, "onScrollListener"    # Lnet/simonvt/numberpicker/NumberPicker$f;

    .prologue
    .line 1132
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->C:Lnet/simonvt/numberpicker/NumberPicker$f;

    .line 1133
    return-void
.end method

.method public setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$g;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lnet/simonvt/numberpicker/NumberPicker$g;

    .prologue
    .line 1123
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lnet/simonvt/numberpicker/NumberPicker$g;

    .line 1124
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(IZ)V

    .line 1185
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1287
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1288
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-eq p1, v1, :cond_1

    .line 1289
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    .line 1291
    :cond_1
    return-void

    .line 1287
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
