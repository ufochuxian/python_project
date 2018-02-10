.class public Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const v0, 0x800033

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const v0, 0x800033

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    .line 51
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const v0, 0x800033

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    const v0, 0x800033

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method private a(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 88
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v15, v1, v3

    .line 91
    .local v15, "wSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const v15, 0x7fffffff

    .line 94
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildCount()I

    move-result v8

    .line 95
    .local v8, "count":I
    const/4 v13, 0x0

    .line 96
    .local v13, "rowWidth":I
    const/4 v14, 0x0

    .line 97
    .local v14, "totalHeight":I
    const/4 v12, 0x0

    .line 99
    .local v12, "rowMaxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingBottom()I

    move-result v3

    add-int v11, v1, v3

    .line 101
    .local v11, "maxRowHeight":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_3

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 103
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    .line 104
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 105
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v7, v1, v3

    .line 108
    .local v7, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 111
    add-int v1, v7, v13

    if-le v1, v15, :cond_2

    .line 112
    add-int/2addr v14, v12

    .line 113
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 114
    move v13, v7

    .line 101
    .end local v7    # "childWidth":I
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 117
    .restart local v7    # "childWidth":I
    .restart local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/2addr v13, v7

    goto :goto_1

    .line 122
    .end local v2    # "child":Landroid/view/View;
    .end local v7    # "childWidth":I
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    if-eqz v13, :cond_4

    .line 123
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 124
    add-int/2addr v14, v12

    .line 128
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_5

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int v15, v11, v1

    .line 131
    :cond_5
    move/from16 v0, p1

    invoke-static {v15, v0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v14

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->setMeasuredDimension(II)V

    .line 132
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 66
    sget-object v2, Lcom/jiliguala/niuwa/R$styleable;->AutoLinearLayout:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    .line 69
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 70
    .local v1, "gravity":I
    if-ltz v1, :cond_0

    .line 71
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->setGravity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void

    .line 74
    .end local v1    # "gravity":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    throw v2
.end method

.method private a(Landroid/view/View;Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pos"    # Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;

    .prologue
    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 415
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    if-nez v1, :cond_0

    .line 416
    iget v1, p2, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->a:I

    iget v2, p2, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->b:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    iget v1, p2, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->a:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, p2, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->b:I

    iget v3, p2, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, p2, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private a(Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;II)V
    .locals 2
    .param p1, "pos"    # Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;
    .param p2, "size"    # I
    .param p3, "gravity"    # I

    .prologue
    const/4 v0, 0x0

    .line 389
    and-int/lit8 v1, p3, 0x7

    sparse-switch v1, :sswitch_data_0

    .line 398
    .end local p2    # "size":I
    :goto_0
    return-void

    .line 391
    .restart local p2    # "size":I
    :sswitch_0
    iget v1, p1, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->a:I

    if-lez p2, :cond_0

    .end local p2    # "size":I
    :goto_1
    add-int v0, v1, p2

    iput v0, p1, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->a:I

    goto :goto_0

    .restart local p2    # "size":I
    :cond_0
    move p2, v0

    goto :goto_1

    .line 395
    :sswitch_1
    iget v1, p1, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->a:I

    if-lez p2, :cond_1

    .end local p2    # "size":I
    :goto_2
    div-int/lit8 v0, p2, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->a:I

    goto :goto_0

    .restart local p2    # "size":I
    :cond_1
    move p2, v0

    goto :goto_2

    .line 389
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 135
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v11, v1, v3

    .line 137
    .local v11, "hSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildCount()I

    move-result v10

    .line 138
    .local v10, "count":I
    const/4 v8, 0x0

    .line 139
    .local v8, "columnHeight":I
    const/4 v15, 0x0

    .local v15, "totalWidth":I
    const/4 v14, 0x0

    .line 140
    .local v14, "maxColumnHeight":I
    const/4 v9, 0x0

    .line 144
    .local v9, "columnMaxWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const v11, 0x7fffffff

    .line 147
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_3

    .line 148
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 149
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    .line 150
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 151
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v7, v1, v3

    .line 154
    .local v7, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 157
    add-int v1, v7, v8

    if-le v1, v11, :cond_2

    .line 158
    add-int/2addr v15, v9

    .line 159
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 160
    move v8, v7

    .line 161
    const/4 v9, 0x0

    .line 147
    .end local v7    # "childHeight":I
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 163
    .restart local v7    # "childHeight":I
    .restart local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/2addr v8, v7

    goto :goto_1

    .line 168
    .end local v2    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    if-eqz v8, :cond_4

    .line 169
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 170
    add-int/2addr v15, v9

    .line 174
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_5

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    sub-int v11, v14, v1

    .line 177
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    move/from16 v0, p1

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->resolveSize(II)I

    move-result v1

    move/from16 v0, p2

    invoke-static {v11, v0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->setMeasuredDimension(II)V

    .line 178
    return-void
.end method

.method private b(Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;II)V
    .locals 2
    .param p1, "pos"    # Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;
    .param p2, "size"    # I
    .param p3, "gravity"    # I

    .prologue
    const/4 v0, 0x0

    .line 401
    and-int/lit8 v1, p3, 0x70

    sparse-switch v1, :sswitch_data_0

    .line 410
    .end local p2    # "size":I
    :goto_0
    return-void

    .line 403
    .restart local p2    # "size":I
    :sswitch_0
    iget v1, p1, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->b:I

    if-lez p2, :cond_0

    .end local p2    # "size":I
    :goto_1
    add-int v0, v1, p2

    iput v0, p1, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->b:I

    goto :goto_0

    .restart local p2    # "size":I
    :cond_0
    move p2, v0

    goto :goto_1

    .line 407
    :sswitch_1
    iget v1, p1, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->b:I

    if-lez p2, :cond_1

    .end local p2    # "size":I
    :goto_2
    div-int/lit8 v0, p2, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->b:I

    goto :goto_0

    .restart local p2    # "size":I
    :cond_1
    move p2, v0

    goto :goto_2

    .line 401
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(IIII)V
    .locals 7
    .param p1, "height"    # I
    .param p2, "totalSize"    # I
    .param p3, "column"    # I
    .param p4, "maxChildWidth"    # I

    .prologue
    .line 335
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 336
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;

    .line 337
    .local v3, "pos":Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->c:I

    if-ne v5, p3, :cond_1

    .line 341
    :cond_0
    sub-int v5, p1, p2

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    invoke-direct {p0, v3, v5, v6}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->b(Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;II)V

    .line 345
    :cond_1
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget v5, v3, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->c:I

    if-ne v5, p3, :cond_2

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 347
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, p4, v5

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v4, v5, v6

    .line 348
    .local v4, "size":I
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v3, v4, v5}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->a(Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;II)V

    .line 351
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "size":I
    :cond_2
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    if-nez v5, :cond_3

    .line 352
    invoke-direct {p0, v0, v3}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->a(Landroid/view/View;Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;)V

    .line 335
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "pos":Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;
    :cond_4
    return-void
.end method

.method private d(IIII)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "totalSize"    # I
    .param p3, "row"    # I
    .param p4, "maxChildHeight"    # I

    .prologue
    const/4 v7, 0x1

    .line 369
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 370
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;

    .line 371
    .local v3, "pos":Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    if-eq v5, v7, :cond_0

    iget v5, v3, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->c:I

    if-ne v5, p3, :cond_1

    .line 374
    :cond_0
    sub-int v5, p1, p2

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    invoke-direct {p0, v3, v5, v6}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->a(Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;II)V

    .line 377
    :cond_1
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    if-nez v5, :cond_2

    iget v5, v3, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;->c:I

    if-ne v5, p3, :cond_2

    .line 378
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 379
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, p4, v5

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v5, v6

    .line 380
    .local v4, "size":I
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v3, v4, v5}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->b(Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;II)V

    .line 383
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "size":I
    :cond_2
    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    if-ne v5, v7, :cond_3

    .line 384
    invoke-direct {p0, v0, v3}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->a(Landroid/view/View;Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;)V

    .line 369
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "pos":Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;
    :cond_4
    return-void
.end method


# virtual methods
.method a(IIII)V
    .locals 20
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildCount()I

    move-result v9

    .line 203
    .local v9, "count":I
    if-nez v9, :cond_0

    .line 255
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingLeft()I

    move-result v18

    sub-int v18, p3, v18

    sub-int v18, v18, p1

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingRight()I

    move-result v19

    sub-int v17, v18, v19

    .line 207
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v18

    sub-int v18, p4, v18

    sub-int v18, v18, p2

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingBottom()I

    move-result v19

    sub-int v11, v18, v19

    .line 209
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v6

    .line 210
    .local v6, "childTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingLeft()I

    move-result v5

    .line 212
    .local v5, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingRight()I

    move-result v19

    add-int v15, v18, v19

    .line 213
    .local v15, "totalHorizontal":I
    const/16 v16, 0x0

    .line 214
    .local v16, "totalVertical":I
    const/4 v8, 0x0

    .line 215
    .local v8, "column":I
    const/4 v14, 0x0

    .line 216
    .local v14, "maxChildWidth":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_6

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 218
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 220
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    if-nez v18, :cond_2

    .line 221
    :cond_1
    const/high16 v18, -0x80000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/high16 v19, -0x80000000

    move/from16 v0, v19

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 223
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 224
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 225
    .local v7, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 227
    .local v4, "childHeight":I
    add-int v18, v6, v4

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v19

    add-int v19, v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v11, v1, v8, v14}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c(IIII)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v6

    .line 231
    add-int/2addr v5, v14

    .line 232
    const/4 v14, 0x0

    .line 233
    add-int/lit8 v8, v8, 0x1

    .line 234
    const/16 v16, 0x0

    .line 237
    :cond_3
    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v6, v6, v18

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6, v8}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;-><init>(III)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v18, v18, v7

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    add-int v10, v18, v19

    .line 241
    .local v10, "currentWidth":I
    if-ge v14, v10, :cond_4

    .line 242
    move v14, v10

    .line 244
    :cond_4
    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v18, v18, v4

    add-int v6, v6, v18

    .line 245
    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v18, v18, v4

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v16, v16, v18

    .line 216
    .end local v4    # "childHeight":I
    .end local v7    # "childWidth":I
    .end local v10    # "currentWidth":I
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 250
    .end local v3    # "child":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v11, v1, v8, v14}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c(IIII)V

    .line 251
    add-int v18, v5, v14

    add-int v15, v15, v18

    .line 253
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v15, v8, v2}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d(IIII)V

    goto/16 :goto_0
.end method

.method b(IIII)V
    .locals 19
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildCount()I

    move-result v7

    .line 271
    .local v7, "count":I
    if-nez v7, :cond_0

    .line 320
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingLeft()I

    move-result v17

    sub-int v17, p3, v17

    sub-int v17, v17, p1

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingRight()I

    move-result v18

    sub-int v16, v17, v18

    .line 275
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v17

    sub-int v17, p4, v17

    sub-int v17, v17, p2

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingBottom()I

    move-result v18

    sub-int v9, v17, v18

    .line 277
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v5

    .line 278
    .local v5, "childTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingLeft()I

    move-result v4

    .line 280
    .local v4, "childLeft":I
    const/4 v14, 0x0

    .line 281
    .local v14, "totalHorizontal":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingBottom()I

    move-result v18

    add-int v15, v17, v18

    .line 282
    .local v15, "totalVertical":I
    const/4 v13, 0x0

    .line 283
    .local v13, "row":I
    const/4 v12, 0x0

    .line 284
    .local v12, "maxChildHeight":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v7, :cond_6

    .line 285
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 287
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 288
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    if-nez v17, :cond_2

    .line 289
    :cond_1
    const/high16 v17, -0x80000000

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 291
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 292
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 293
    .local v6, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 295
    .local v3, "childHeight":I
    add-int v17, v4, v6

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingLeft()I

    move-result v18

    add-int v18, v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 296
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v14, v13, v12}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d(IIII)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getPaddingLeft()I

    move-result v4

    .line 298
    add-int/2addr v5, v12

    .line 299
    const/4 v12, 0x0

    .line 300
    add-int/lit8 v13, v13, 0x1

    .line 301
    const/4 v14, 0x0

    .line 304
    :cond_3
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v4, v4, v17

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v13}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout$a;-><init>(III)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v17, v17, v3

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 308
    .local v8, "currentHeight":I
    if-ge v12, v8, :cond_4

    .line 309
    move v12, v8

    .line 311
    :cond_4
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v17, v0

    add-int v17, v17, v6

    add-int v4, v4, v17

    .line 312
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v17, v0

    add-int v17, v17, v6

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v14, v14, v17

    .line 284
    .end local v3    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v8    # "currentHeight":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 316
    .end local v2    # "child":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v14, v13, v12}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d(IIII)V

    .line 317
    add-int v17, v5, v12

    add-int v15, v15, v17

    .line 318
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v9, v15, v13, v1}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c(IIII)V

    goto/16 :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->a(IIII)V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->b(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->b(II)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->a(II)V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 430
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    if-eq v0, p1, :cond_2

    .line 431
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 432
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 435
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 436
    or-int/lit8 p1, p1, 0x30

    .line 439
    :cond_1
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    .line 440
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->requestLayout()V

    .line 442
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I

    .prologue
    const v2, 0x800007

    .line 445
    and-int v0, p1, v2

    .line 446
    .local v0, "gravity":I
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 447
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    .line 448
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->requestLayout()V

    .line 450
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 475
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    if-eq v0, p1, :cond_0

    .line 476
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->c:I

    .line 477
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->requestLayout()V

    .line 479
    :cond_0
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I

    .prologue
    .line 453
    and-int/lit8 v0, p1, 0x70

    .line 454
    .local v0, "gravity":I
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 455
    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->d:I

    .line 456
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->requestLayout()V

    .line 458
    :cond_0
    return-void
.end method
