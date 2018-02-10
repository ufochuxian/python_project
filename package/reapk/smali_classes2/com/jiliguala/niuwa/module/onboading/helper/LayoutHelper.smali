.class public Lcom/jiliguala/niuwa/module/onboading/helper/LayoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static relayoutButtonWhileShowSoftKeyBoard(Landroid/view/View;I)V
    .locals 4
    .param p0, "viewToLayout"    # Landroid/view/View;
    .param p1, "keyBoardHeight"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    .local v1, "rl":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v1, :cond_0

    .line 16
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v1    # "rl":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 19
    .restart local v1    # "rl":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 21
    if-lez p1, :cond_1

    .end local p1    # "keyBoardHeight":I
    :goto_0
    invoke-virtual {v1, v2, v2, v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 22
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBottom(I)V

    .line 23
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    return-void

    .restart local p1    # "keyBoardHeight":I
    :cond_1
    move p1, v2

    .line 21
    goto :goto_0
.end method
