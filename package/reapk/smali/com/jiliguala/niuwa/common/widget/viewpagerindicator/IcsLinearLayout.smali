.class Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010129
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v1, 0x0

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a:[I

    invoke-virtual {p1, v1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->i:I

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->h:I

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v2

    .line 99
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 100
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 103
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v5, v6, v7

    .line 106
    .local v5, "top":I
    invoke-direct {p0, p1, v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a(Landroid/graphics/Canvas;I)V

    .line 99
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 113
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 114
    .local v0, "bottom":I
    if-nez v1, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->g:I

    sub-int v0, v6, v7

    .line 120
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a(Landroid/graphics/Canvas;I)V

    .line 122
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void

    .line 118
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->i:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->i:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->g:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    return-void
.end method

.method private a(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->h:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 168
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 169
    const/4 v0, 0x1

    .line 170
    goto :goto_0

    .line 167
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v1

    .line 126
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 127
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 130
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v3, v6, v7

    .line 133
    .local v3, "left":I
    invoke-direct {p0, p1, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->b(Landroid/graphics/Canvas;I)V

    .line 126
    .end local v3    # "left":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .restart local v0    # "child":Landroid/view/View;
    const/4 v5, 0x0

    .line 141
    .local v5, "right":I
    if-nez v0, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->f:I

    sub-int v5, v6, v7

    .line 147
    :goto_1
    invoke-direct {p0, p1, v5}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->b(Landroid/graphics/Canvas;I)V

    .line 149
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "right":I
    :cond_2
    return-void

    .line 145
    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "right":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->i:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->f:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->i:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    const/4 v5, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 60
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getOrientation()I

    move-result v2

    .line 61
    .local v2, "orientation":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    if-ne v2, v5, :cond_2

    .line 65
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->g:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 73
    .local v0, "count":I
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_1

    .line 74
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    if-ne v2, v5, :cond_3

    .line 76
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->g:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 82
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 83
    return-void

    .line 68
    .end local v0    # "count":I
    :cond_2
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->f:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 78
    .restart local v0    # "count":I
    :cond_3
    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->f:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 89
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->a(Landroid/graphics/Canvas;)V

    .line 94
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    return-void

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->e:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->e:Landroid/graphics/drawable/Drawable;

    .line 46
    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->f:I

    .line 48
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->g:I

    .line 53
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->setWillNotDraw(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->requestLayout()V

    goto :goto_0

    .line 50
    :cond_2
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->f:I

    .line 51
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->g:I

    goto :goto_1
.end method
