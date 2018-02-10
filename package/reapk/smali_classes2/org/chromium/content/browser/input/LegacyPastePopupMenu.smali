.class public Lorg/chromium/content/browser/input/LegacyPastePopupMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/chromium/content/browser/input/PastePopupMenu;


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

.field private final mLineOffsetY:I

.field private final mParent:Landroid/view/View;

.field private mPasteView:Landroid/view/View;

.field private final mPasteViewLayout:I

.field private mRawPositionX:I

.field private mRawPositionY:I

.field private mStatusBarHeight:I

.field private final mWidthOffsetX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "delegate"    # Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    .line 38
    iput-object p3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    .line 39
    iput-object p1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    .line 40
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const v6, 0x10102c8

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    .line 41
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 42
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 43
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 45
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 46
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 47
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    new-instance v4, Lorg/chromium/content/browser/input/LegacyPastePopupMenu$1;

    invoke-direct {v4, p0, p3}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu$1;-><init>(Lorg/chromium/content/browser/input/LegacyPastePopupMenu;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 54
    new-array v1, v8, [I

    const v3, 0x1010314

    aput v3, v1, v7

    .line 58
    .local v1, "popupLayoutAttrs":[I
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteViewLayout:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    const/high16 v3, 0x40a00000    # 5.0f

    iget-object v4, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mLineOffsetY:I

    .line 66
    const/high16 v3, 0x41f00000    # 30.0f

    iget-object v4, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mWidthOffsetX:I

    .line 69
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 71
    .local v2, "statusBarHeightResourceId":I
    if-lez v2, :cond_0

    .line 72
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mStatusBarHeight:I

    .line 75
    :cond_0
    return-void
.end method

.method private paste()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;->paste()V

    .line 169
    return-void
.end method

.method private positionAt(II)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 100
    iget v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionX:I

    if-ne v9, p1, :cond_0

    iget v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionY:I

    if-ne v9, p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 145
    :goto_0
    return-void

    .line 101
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionX:I

    .line 102
    iput p2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionY:I

    .line 104
    iget-object v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 106
    .local v8, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 108
    .local v3, "height":I
    int-to-float v9, p1

    int-to-float v10, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v5, v9

    .line 109
    .local v5, "positionX":I
    sub-int v9, p2, v3

    iget v10, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mLineOffsetY:I

    sub-int v6, v9, v10

    .line 111
    .local v6, "positionY":I
    const/4 v4, 0x0

    .line 112
    .local v4, "minOffsetY":I
    iget-object v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 113
    iget v4, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mStatusBarHeight:I

    .line 116
    :cond_1
    iget-object v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 117
    .local v7, "screenWidth":I
    if-ge v6, v4, :cond_3

    .line 120
    add-int/2addr v6, v3

    .line 121
    iget v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mLineOffsetY:I

    add-int/2addr v6, v9

    .line 124
    iget v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mWidthOffsetX:I

    div-int/lit8 v2, v9, 0x2

    .line 126
    .local v2, "handleHalfWidth":I
    add-int v9, p1, v8

    if-ge v9, v7, :cond_2

    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v2

    add-int/2addr v5, v9

    .line 135
    .end local v2    # "handleHalfWidth":I
    :goto_1
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 136
    .local v1, "coords":[I
    iget-object v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 137
    const/4 v9, 0x0

    aget v9, v1, v9

    add-int/2addr v5, v9

    .line 138
    const/4 v9, 0x1

    aget v9, v1, v9

    add-int/2addr v6, v9

    .line 140
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->isShowing()Z

    move-result v9

    if-nez v9, :cond_4

    .line 141
    iget-object v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 127
    .end local v1    # "coords":[I
    .restart local v2    # "handleHalfWidth":I
    :cond_2
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v2

    sub-int/2addr v5, v9

    goto :goto_1

    .line 130
    .end local v2    # "handleHalfWidth":I
    :cond_3
    const/4 v9, 0x0

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 131
    sub-int v9, v7, v8

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 143
    .restart local v1    # "coords":[I
    :cond_4
    iget-object v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v9, v5, v6, v10, v11}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private updateContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 148
    iget-object v2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 149
    iget-object v2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 151
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    iget v2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteViewLayout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    .line 153
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 154
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate TextEdit paste window"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 158
    .local v1, "size":I
    iget-object v2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    .line 162
    iget-object v2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "size":I
    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 165
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 86
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->paste()V

    .line 96
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->hide()V

    .line 97
    return-void
.end method

.method public show(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->updateContent()V

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->positionAt(II)V

    .line 81
    return-void
.end method
