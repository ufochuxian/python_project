.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$b;,
        Landroid/support/v7/widget/GridLayoutManager$a;,
        Landroid/support/v7/widget/GridLayoutManager$c;
    }
.end annotation


# static fields
.field private static final E:Z = false

.field private static final F:Ljava/lang/String; = "GridLayoutManager"

.field public static final a:I = -0x1


# instance fields
.field b:Z

.field c:I

.field d:[I

.field e:[Landroid/view/View;

.field final f:Landroid/util/SparseIntArray;

.field final g:Landroid/util/SparseIntArray;

.field h:Landroid/support/v7/widget/GridLayoutManager$c;

.field final i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:Z

    .line 44
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 55
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 56
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/util/SparseIntArray;

    .line 57
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v1}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->i:Landroid/graphics/Rect;

    .line 72
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 73
    .local v0, "properties":Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->b:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 74
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I
    .locals 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "viewPosition"    # I

    .prologue
    .line 450
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v1, p3, v2}, Landroid/support/v7/widget/GridLayoutManager$c;->c(II)I

    move-result v1

    .line 462
    :goto_0
    return v1

    .line 453
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$n;->b(I)I

    move-result v0

    .line 454
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 459
    const-string v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x0

    goto :goto_0

    .line 462
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$c;->c(II)I

    move-result v1

    goto :goto_0
.end method

.method private a(FI)V
    .locals 2
    .param p1, "maxSizeInOther"    # F
    .param p2, "currentOtherDirSize"    # I

    .prologue
    .line 745
    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 747
    .local v0, "contentSize":I
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->n(I)V

    .line 748
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;IIZ)V
    .locals 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "count"    # I
    .param p4, "consumedSpanCount"    # I
    .param p5, "layingOutInPrimaryDirection"    # Z

    .prologue
    .line 770
    if-eqz p5, :cond_0

    .line 771
    const/4 v5, 0x0

    .line 772
    .local v5, "start":I
    move v1, p3

    .line 773
    .local v1, "end":I
    const/4 v0, 0x1

    .line 779
    .local v0, "diff":I
    :goto_0
    const/4 v4, 0x0

    .line 780
    .local v4, "span":I
    move v2, v5

    .local v2, "i":I
    :goto_1
    if-eq v2, v1, :cond_1

    .line 781
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aget-object v6, v7, v2

    .line 782
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 783
    .local v3, "params":Landroid/support/v7/widget/GridLayoutManager$b;
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/GridLayoutManager;->e(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v7

    iput v7, v3, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    .line 784
    iput v4, v3, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    .line 785
    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    add-int/2addr v4, v7

    .line 780
    add-int/2addr v2, v0

    goto :goto_1

    .line 775
    .end local v0    # "diff":I
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "params":Landroid/support/v7/widget/GridLayoutManager$b;
    .end local v4    # "span":I
    .end local v5    # "start":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v5, p3, -0x1

    .line 776
    .restart local v5    # "start":I
    const/4 v1, -0x1

    .line 777
    .restart local v1    # "end":I
    const/4 v0, -0x1

    .restart local v0    # "diff":I
    goto :goto_0

    .line 787
    .restart local v2    # "i":I
    .restart local v4    # "span":I
    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .prologue
    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    .line 754
    .local v0, "lp":Landroid/support/v7/widget/RecyclerView$h;
    if-eqz p4, :cond_1

    .line 755
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$h;)Z

    move-result v1

    .line 759
    .local v1, "measure":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 760
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 762
    :cond_0
    return-void

    .line 757
    .end local v1    # "measure":Z
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$h;)Z

    move-result v1

    .restart local v1    # "measure":Z
    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherDirParentSpecMode"    # I
    .param p3, "alreadyMeasured"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 712
    .local v4, "lp":Landroid/support/v7/widget/GridLayoutManager$b;
    iget-object v1, v4, Landroid/support/v7/widget/GridLayoutManager$b;->e:Landroid/graphics/Rect;

    .line 713
    .local v1, "decorInsets":Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/support/v7/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/support/v7/widget/GridLayoutManager$b;->bottomMargin:I

    add-int v5, v7, v8

    .line 715
    .local v5, "verticalInsets":I
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/support/v7/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/support/v7/widget/GridLayoutManager$b;->rightMargin:I

    add-int v3, v7, v8

    .line 717
    .local v3, "horizontalInsets":I
    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    iget v8, v4, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    invoke-virtual {p0, v7, v8}, Landroid/support/v7/widget/GridLayoutManager;->a(II)I

    move-result v0

    .line 720
    .local v0, "availableSpaceInOther":I
    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    if-ne v7, v10, :cond_0

    .line 721
    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    invoke-static {v0, p2, v3, v7, v9}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v6

    .line 723
    .local v6, "wSpec":I
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v7}, Landroid/support/v7/widget/ac;->f()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->J()I

    move-result v8

    iget v9, v4, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    invoke-static {v7, v8, v5, v9, v10}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v2

    .line 731
    .local v2, "hSpec":I
    :goto_0
    invoke-direct {p0, p1, v6, v2, p3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 732
    return-void

    .line 726
    .end local v2    # "hSpec":I
    .end local v6    # "wSpec":I
    :cond_0
    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    invoke-static {v0, p2, v5, v7, v9}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v2

    .line 728
    .restart local v2    # "hSpec":I
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v7}, Landroid/support/v7/widget/ac;->f()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->I()I

    move-result v8

    iget v9, v4, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    invoke-static {v7, v8, v3, v9, v10}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v6

    .restart local v6    # "wSpec":I
    goto :goto_0
.end method

.method static a([III)[I
    .locals 9
    .param p0, "cachedBorders"    # [I
    .param p1, "spanCount"    # I
    .param p2, "totalSpace"    # I

    .prologue
    const/4 v8, 0x0

    .line 320
    if-eqz p0, :cond_0

    array-length v6, p0

    add-int/lit8 v7, p1, 0x1

    if-ne v6, v7, :cond_0

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    aget v6, p0, v6

    if-eq v6, p2, :cond_1

    .line 322
    :cond_0
    add-int/lit8 v6, p1, 0x1

    new-array p0, v6, [I

    .line 324
    :cond_1
    aput v8, p0, v8

    .line 325
    div-int v4, p2, p1

    .line 326
    .local v4, "sizePerSpan":I
    rem-int v5, p2, p1

    .line 327
    .local v5, "sizePerSpanRemainder":I
    const/4 v1, 0x0

    .line 328
    .local v1, "consumedPixels":I
    const/4 v0, 0x0

    .line 329
    .local v0, "additionalSize":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p1, :cond_3

    .line 330
    move v3, v4

    .line 331
    .local v3, "itemSize":I
    add-int/2addr v0, v5

    .line 332
    if-lez v0, :cond_2

    sub-int v6, p1, v0

    if-ge v6, v5, :cond_2

    .line 333
    add-int/lit8 v3, v3, 0x1

    .line 334
    sub-int/2addr v0, p1

    .line 336
    :cond_2
    add-int/2addr v1, v3

    .line 337
    aput v1, p0, v2

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v3    # "itemSize":I
    :cond_3
    return-object p0
.end method

.method private ac()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    return-void
.end method

.method private ad()V
    .locals 6

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->H()I

    move-result v0

    .line 190
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->j(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 192
    .local v2, "lp":Landroid/support/v7/widget/GridLayoutManager$b;
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$b;->h()I

    move-result v3

    .line 193
    .local v3, "viewPosition":I
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "lp":Landroid/support/v7/widget/GridLayoutManager$b;
    .end local v3    # "viewPosition":I
    :cond_0
    return-void
.end method

.method private ae()V
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->j()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->K()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->O()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->M()I

    move-result v2

    sub-int v0, v1, v2

    .line 280
    .local v0, "totalSpace":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->n(I)V

    .line 281
    return-void

    .line 278
    .end local v0    # "totalSpace":I
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->L()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->P()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->N()I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "totalSpace":I
    goto :goto_0
.end method

.method private af()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-eq v0, v1, :cond_1

    .line 364
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    .line 366
    :cond_1
    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 466
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v2, p3, v3}, Landroid/support/v7/widget/GridLayoutManager$c;->b(II)I

    move-result v1

    .line 483
    :cond_0
    :goto_0
    return v1

    .line 469
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 470
    .local v1, "cached":I
    if-ne v1, v3, :cond_0

    .line 473
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$n;->b(I)I

    move-result v0

    .line 474
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_2

    .line 479
    const-string v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v1, 0x0

    goto :goto_0

    .line 483
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/GridLayoutManager$c;->b(II)I

    move-result v1

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 7
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "anchorInfo"    # Landroid/support/v7/widget/LinearLayoutManager$a;
    .param p4, "itemDirection"    # I

    .prologue
    const/4 v2, 0x1

    .line 386
    if-ne p4, v2, :cond_0

    .line 388
    .local v2, "layingOutInPrimaryDirection":Z
    :goto_0
    iget v6, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v5

    .line 389
    .local v5, "span":I
    if-eqz v2, :cond_1

    .line 391
    :goto_1
    if-lez v5, :cond_3

    iget v6, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    if-lez v6, :cond_3

    .line 392
    iget v6, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 393
    iget v6, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v5

    goto :goto_1

    .line 386
    .end local v2    # "layingOutInPrimaryDirection":Z
    .end local v5    # "span":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 397
    .restart local v2    # "layingOutInPrimaryDirection":Z
    .restart local v5    # "span":I
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->i()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 398
    .local v1, "indexLimit":I
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 399
    .local v4, "pos":I
    move v0, v5

    .line 400
    .local v0, "bestSpan":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 401
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v3

    .line 402
    .local v3, "next":I
    if-le v3, v0, :cond_2

    .line 403
    add-int/lit8 v4, v4, 0x1

    .line 404
    move v0, v3

    .line 408
    goto :goto_2

    .line 409
    .end local v3    # "next":I
    :cond_2
    iput v4, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 411
    .end local v0    # "bestSpan":I
    .end local v1    # "indexLimit":I
    .end local v4    # "pos":I
    :cond_3
    return-void
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 487
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v2, p3}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v1

    .line 504
    :cond_0
    :goto_0
    return v1

    .line 490
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 491
    .local v1, "cached":I
    if-ne v1, v3, :cond_0

    .line 494
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$n;->b(I)I

    move-result v0

    .line 495
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_2

    .line 500
    const-string v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v1, 0x1

    goto :goto_0

    .line 504
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v1

    goto :goto_0
.end method

.method private n(I)V
    .locals 2
    .param p1, "totalSpace"    # I

    .prologue
    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->a([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    .line 310
    return-void
.end method


# virtual methods
.method a(II)I
    .locals 3
    .param p1, "startSpan"    # I
    .param p2, "spanSize"    # I

    .prologue
    .line 343
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 347
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 371
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ae()V

    .line 372
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->af()V

    .line 373
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 117
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    if-nez v0, :cond_0

    .line 118
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 125
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 121
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$h;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 226
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    .line 230
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 237
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 242
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 245
    :goto_0
    return-object v0

    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;III)Landroid/view/View;
    .locals 10
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->m()V

    .line 417
    const/4 v4, 0x0

    .line 418
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 419
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v9, p0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v9}, Landroid/support/v7/widget/ac;->c()I

    move-result v1

    .line 420
    .local v1, "boundsStart":I
    iget-object v9, p0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v9}, Landroid/support/v7/widget/ac;->d()I

    move-result v0

    .line 421
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_1

    const/4 v2, 0x1

    .line 423
    .local v2, "diff":I
    :goto_0
    move v3, p3

    .local v3, "i":I
    :goto_1
    if-eq v3, p4, :cond_5

    .line 424
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager;->j(I)Landroid/view/View;

    move-result-object v8

    .line 425
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/GridLayoutManager;->e(Landroid/view/View;)I

    move-result v6

    .line 426
    .local v6, "position":I
    if-ltz v6, :cond_0

    if-ge v6, p5, :cond_0

    .line 427
    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v7

    .line 428
    .local v7, "span":I
    if-eqz v7, :cond_2

    .line 423
    .end local v7    # "span":I
    :cond_0
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 421
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v8    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 431
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "span":I
    .restart local v8    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 432
    if-nez v4, :cond_0

    .line 433
    move-object v4, v8

    goto :goto_2

    .line 435
    :cond_3
    iget-object v9, p0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/ac;->a(Landroid/view/View;)I

    move-result v9

    if-ge v9, v0, :cond_4

    iget-object v9, p0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    .line 436
    invoke-virtual {v9, v8}, Landroid/support/v7/widget/ac;->b(Landroid/view/View;)I

    move-result v9

    if-ge v9, v1, :cond_6

    .line 437
    :cond_4
    if-nez v5, :cond_0

    .line 438
    move-object v5, v8

    goto :goto_2

    .line 445
    .end local v6    # "position":I
    .end local v7    # "span":I
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    if-eqz v5, :cond_7

    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :goto_3
    move-object v8, v5

    :cond_6
    return-object v8

    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_7
    move-object v5, v4

    goto :goto_3
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)Landroid/view/View;
    .locals 34
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 994
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->g(Landroid/view/View;)Landroid/view/View;

    move-result-object v23

    .line 995
    .local v23, "prevFocusedChild":Landroid/view/View;
    if-nez v23, :cond_1

    .line 996
    const/4 v6, 0x0

    .line 1111
    :cond_0
    :goto_0
    return-object v6

    .line 998
    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 999
    .local v18, "lp":Landroid/support/v7/widget/GridLayoutManager$b;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    move/from16 v25, v0

    .line 1000
    .local v25, "prevSpanStart":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    move/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    move/from16 v33, v0

    add-int v24, v32, v33

    .line 1001
    .local v24, "prevSpanEnd":I
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)Landroid/view/View;

    move-result-object v31

    .line 1002
    .local v31, "view":Landroid/view/View;
    if-nez v31, :cond_2

    .line 1003
    const/4 v6, 0x0

    goto :goto_0

    .line 1007
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->g(I)I

    move-result v16

    .line 1008
    .local v16, "layoutDir":I
    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    const/16 v32, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/GridLayoutManager;->p:Z

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    const/4 v4, 0x1

    .line 1010
    .local v4, "ascend":Z
    :goto_2
    if-eqz v4, :cond_6

    .line 1011
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->H()I

    move-result v32

    add-int/lit8 v27, v32, -0x1

    .line 1012
    .local v27, "start":I
    const/4 v15, -0x1

    .line 1013
    .local v15, "inc":I
    const/16 v17, -0x1

    .line 1019
    .local v17, "limit":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->l()Z

    move-result v32

    if-eqz v32, :cond_7

    const/16 v22, 0x1

    .line 1024
    .local v22, "preferLastSpan":Z
    :goto_4
    const/4 v11, 0x0

    .line 1025
    .local v11, "focusableWeakCandidate":Landroid/view/View;
    const/4 v13, -0x1

    .line 1026
    .local v13, "focusableWeakCandidateSpanIndex":I
    const/4 v12, 0x0

    .line 1034
    .local v12, "focusableWeakCandidateOverlap":I
    const/16 v28, 0x0

    .line 1035
    .local v28, "unfocusableWeakCandidate":Landroid/view/View;
    const/16 v30, -0x1

    .line 1036
    .local v30, "unfocusableWeakCandidateSpanIndex":I
    const/16 v29, 0x0

    .line 1043
    .local v29, "unfocusableWeakCandidateOverlap":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v10

    .line 1044
    .local v10, "focusableSpanGroupIndex":I
    move/from16 v14, v27

    .local v14, "i":I
    :goto_5
    move/from16 v0, v17

    if-eq v14, v0, :cond_3

    .line 1045
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v14}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v26

    .line 1046
    .local v26, "spanGroupIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/GridLayoutManager;->j(I)Landroid/view/View;

    move-result-object v6

    .line 1047
    .local v6, "candidate":Landroid/view/View;
    move-object/from16 v0, v23

    if-ne v6, v0, :cond_8

    .line 1111
    .end local v6    # "candidate":Landroid/view/View;
    .end local v26    # "spanGroupIndex":I
    :cond_3
    if-eqz v11, :cond_16

    .end local v11    # "focusableWeakCandidate":Landroid/view/View;
    :goto_6
    move-object v6, v11

    goto/16 :goto_0

    .line 1008
    .end local v4    # "ascend":Z
    .end local v10    # "focusableSpanGroupIndex":I
    .end local v12    # "focusableWeakCandidateOverlap":I
    .end local v13    # "focusableWeakCandidateSpanIndex":I
    .end local v14    # "i":I
    .end local v15    # "inc":I
    .end local v17    # "limit":I
    .end local v22    # "preferLastSpan":Z
    .end local v27    # "start":I
    .end local v28    # "unfocusableWeakCandidate":Landroid/view/View;
    .end local v29    # "unfocusableWeakCandidateOverlap":I
    .end local v30    # "unfocusableWeakCandidateSpanIndex":I
    :cond_4
    const/16 v32, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1015
    .restart local v4    # "ascend":Z
    :cond_6
    const/16 v27, 0x0

    .line 1016
    .restart local v27    # "start":I
    const/4 v15, 0x1

    .line 1017
    .restart local v15    # "inc":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->H()I

    move-result v17

    .restart local v17    # "limit":I
    goto :goto_3

    .line 1019
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    .line 1051
    .restart local v6    # "candidate":Landroid/view/View;
    .restart local v10    # "focusableSpanGroupIndex":I
    .restart local v11    # "focusableWeakCandidate":Landroid/view/View;
    .restart local v12    # "focusableWeakCandidateOverlap":I
    .restart local v13    # "focusableWeakCandidateSpanIndex":I
    .restart local v14    # "i":I
    .restart local v22    # "preferLastSpan":Z
    .restart local v26    # "spanGroupIndex":I
    .restart local v28    # "unfocusableWeakCandidate":Landroid/view/View;
    .restart local v29    # "unfocusableWeakCandidateOverlap":I
    .restart local v30    # "unfocusableWeakCandidateSpanIndex":I
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-eqz v32, :cond_a

    move/from16 v0, v26

    if-eq v0, v10, :cond_a

    .line 1056
    if-nez v11, :cond_3

    .line 1044
    :cond_9
    :goto_7
    add-int/2addr v14, v15

    goto :goto_5

    .line 1062
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 1063
    .local v8, "candidateLp":Landroid/support/v7/widget/GridLayoutManager$b;
    iget v9, v8, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    .line 1064
    .local v9, "candidateStart":I
    iget v0, v8, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    move/from16 v32, v0

    iget v0, v8, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    move/from16 v33, v0

    add-int v7, v32, v33

    .line 1065
    .local v7, "candidateEnd":I
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-eqz v32, :cond_b

    move/from16 v0, v25

    if-ne v9, v0, :cond_b

    move/from16 v0, v24

    if-eq v7, v0, :cond_0

    .line 1069
    :cond_b
    const/4 v5, 0x0

    .line 1070
    .local v5, "assignAsWeek":Z
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-eqz v32, :cond_c

    if-eqz v11, :cond_d

    .line 1071
    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-nez v32, :cond_f

    if-nez v28, :cond_f

    .line 1072
    :cond_d
    const/4 v5, 0x1

    .line 1097
    :cond_e
    :goto_8
    if-eqz v5, :cond_9

    .line 1098
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-eqz v32, :cond_15

    .line 1099
    move-object v11, v6

    .line 1100
    iget v13, v8, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    .line 1101
    move/from16 v0, v24

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 1102
    move/from16 v0, v25

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v33

    sub-int v12, v32, v33

    goto :goto_7

    .line 1074
    :cond_f
    move/from16 v0, v25

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1075
    .local v19, "maxStart":I
    move/from16 v0, v24

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 1076
    .local v20, "minEnd":I
    sub-int v21, v20, v19

    .line 1077
    .local v21, "overlap":I
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1078
    move/from16 v0, v21

    if-le v0, v12, :cond_10

    .line 1079
    const/4 v5, 0x1

    goto :goto_8

    .line 1080
    :cond_10
    move/from16 v0, v21

    if-ne v0, v12, :cond_e

    if-le v9, v13, :cond_11

    const/16 v32, 0x1

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 1083
    const/4 v5, 0x1

    goto :goto_8

    .line 1080
    :cond_11
    const/16 v32, 0x0

    goto :goto_9

    .line 1085
    :cond_12
    if-nez v11, :cond_e

    const/16 v32, 0x0

    const/16 v33, 0x1

    .line 1086
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v6, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;ZZ)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 1087
    move/from16 v0, v21

    move/from16 v1, v29

    if-le v0, v1, :cond_13

    .line 1088
    const/4 v5, 0x1

    goto :goto_8

    .line 1089
    :cond_13
    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    move/from16 v0, v30

    if-le v9, v0, :cond_14

    const/16 v32, 0x1

    :goto_a
    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 1092
    const/4 v5, 0x1

    goto :goto_8

    .line 1089
    :cond_14
    const/16 v32, 0x0

    goto :goto_a

    .line 1104
    .end local v19    # "maxStart":I
    .end local v20    # "minEnd":I
    .end local v21    # "overlap":I
    :cond_15
    move-object/from16 v28, v6

    .line 1105
    iget v0, v8, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    move/from16 v30, v0

    .line 1106
    move/from16 v0, v24

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 1107
    move/from16 v0, v25

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v33

    sub-int v29, v32, v33

    goto/16 :goto_7

    .end local v5    # "assignAsWeek":Z
    .end local v6    # "candidate":Landroid/view/View;
    .end local v7    # "candidateEnd":I
    .end local v8    # "candidateLp":Landroid/support/v7/widget/GridLayoutManager$b;
    .end local v9    # "candidateStart":I
    .end local v26    # "spanGroupIndex":I
    :cond_16
    move-object/from16 v11, v28

    .line 1111
    goto/16 :goto_6
.end method

.method public a(I)V
    .locals 3
    .param p1, "spanCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 809
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-ne p1, v0, :cond_0

    .line 820
    :goto_0
    return-void

    .line 812
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:Z

    .line 813
    if-ge p1, v1, :cond_1

    .line 814
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 818
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 819
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->y()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 285
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    if-nez v6, :cond_0

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/graphics/Rect;II)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->M()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->O()I

    move-result v7

    add-int v1, v6, v7

    .line 290
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->N()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->P()I

    move-result v7

    add-int v4, v6, v7

    .line 291
    .local v4, "verticalPadding":I
    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v6, v4

    .line 293
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->Y()I

    move-result v6

    invoke-static {p3, v2, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    .line 294
    .local v0, "height":I
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v1

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->X()I

    move-result v7

    .line 294
    invoke-static {p2, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v5

    .line 302
    .end local v2    # "usedHeight":I
    .local v5, "width":I
    :goto_0
    invoke-virtual {p0, v5, v0}, Landroid/support/v7/widget/GridLayoutManager;->g(II)V

    .line 303
    return-void

    .line 297
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v1

    .line 298
    .local v3, "usedWidth":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->X()I

    move-result v6

    invoke-static {p2, v3, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v5

    .line 299
    .restart local v5    # "width":I
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v4

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->Y()I

    move-result v7

    .line 299
    invoke-static {p3, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/GridLayoutManager$c;)V
    .locals 0
    .param p1, "spanSizeLookup"    # Landroid/support/v7/widget/GridLayoutManager$c;

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    .line 262
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "anchorInfo"    # Landroid/support/v7/widget/LinearLayoutManager$a;
    .param p4, "itemDirection"    # I

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    .line 355
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ae()V

    .line 356
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->i()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    .line 359
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->af()V

    .line 360
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 37
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "layoutState"    # Landroid/support/v7/widget/LinearLayoutManager$c;
    .param p4, "result"    # Landroid/support/v7/widget/LinearLayoutManager$b;

    .prologue
    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v4}, Landroid/support/v7/widget/ac;->i()I

    move-result v27

    .line 526
    .local v27, "otherDirSpecMode":I
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v4, :cond_2

    const/16 v18, 0x1

    .line 527
    .local v18, "flexibleInOtherDir":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->H()I

    move-result v4

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    aget v16, v4, v5

    .line 531
    .local v16, "currentOtherDirSize":I
    :goto_1
    if-eqz v18, :cond_0

    .line 532
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->ae()V

    .line 534
    :cond_0
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->l:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v9, 0x1

    .line 536
    .local v9, "layingOutInPrimaryDirection":Z
    :goto_2
    const/4 v7, 0x0

    .line 537
    .local v7, "count":I
    const/4 v8, 0x0

    .line 538
    .local v8, "consumedSpanCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    move/from16 v31, v0

    .line 539
    .local v31, "remainingSpan":I
    if-nez v9, :cond_1

    .line 540
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v22

    .line 541
    .local v22, "itemSpanIndex":I
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v23

    .line 542
    .local v23, "itemSpanSize":I
    add-int v31, v22, v23

    .line 544
    .end local v22    # "itemSpanIndex":I
    .end local v23    # "itemSpanSize":I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-ge v7, v4, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$t;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez v31, :cond_6

    .line 545
    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    move/from16 v30, v0

    .line 546
    .local v30, "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v33

    .line 547
    .local v33, "spanSize":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    move/from16 v0, v33

    if-le v0, v4, :cond_5

    .line 548
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " spans but GridLayoutManager has only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " spans."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 526
    .end local v7    # "count":I
    .end local v8    # "consumedSpanCount":I
    .end local v9    # "layingOutInPrimaryDirection":Z
    .end local v16    # "currentOtherDirSize":I
    .end local v18    # "flexibleInOtherDir":Z
    .end local v30    # "pos":I
    .end local v31    # "remainingSpan":I
    .end local v33    # "spanSize":I
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 527
    .restart local v18    # "flexibleInOtherDir":Z
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 534
    .restart local v16    # "currentOtherDirSize":I
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 552
    .restart local v7    # "count":I
    .restart local v8    # "consumedSpanCount":I
    .restart local v9    # "layingOutInPrimaryDirection":Z
    .restart local v30    # "pos":I
    .restart local v31    # "remainingSpan":I
    .restart local v33    # "spanSize":I
    :cond_5
    sub-int v31, v31, v33

    .line 553
    if-gez v31, :cond_7

    .line 565
    .end local v30    # "pos":I
    .end local v33    # "spanSize":I
    :cond_6
    if-nez v7, :cond_8

    .line 566
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    .line 699
    :goto_4
    return-void

    .line 556
    .restart local v30    # "pos":I
    .restart local v33    # "spanSize":I
    :cond_7
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$n;)Landroid/view/View;

    move-result-object v11

    .line 557
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_6

    .line 560
    add-int v8, v8, v33

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aput-object v11, v4, v7

    .line 562
    add-int/lit8 v7, v7, 0x1

    .line 563
    goto/16 :goto_3

    .line 570
    .end local v11    # "view":Landroid/view/View;
    .end local v30    # "pos":I
    .end local v33    # "spanSize":I
    :cond_8
    const/16 v25, 0x0

    .line 571
    .local v25, "maxSize":I
    const/16 v26, 0x0

    .local v26, "maxSizeInOther":F
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 574
    invoke-direct/range {v4 .. v9}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;IIZ)V

    .line 575
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v7, :cond_e

    .line 576
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 577
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->r:Ljava/util/List;

    if-nez v4, :cond_c

    .line 578
    if-eqz v9, :cond_b

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/view/View;)V

    .line 590
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->i:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 592
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v11, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/ac;->e(Landroid/view/View;)I

    move-result v32

    .line 594
    .local v32, "size":I
    move/from16 v0, v32

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    .line 595
    move/from16 v25, v32

    .line 597
    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 598
    .local v24, "lp":Landroid/support/v7/widget/GridLayoutManager$b;
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v5, v11}, Landroid/support/v7/widget/ac;->f(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    int-to-float v5, v5

    div-float v28, v4, v5

    .line 600
    .local v28, "otherSize":F
    cmpl-float v4, v28, v26

    if-lez v4, :cond_a

    .line 601
    move/from16 v26, v28

    .line 575
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 581
    .end local v24    # "lp":Landroid/support/v7/widget/GridLayoutManager$b;
    .end local v28    # "otherSize":F
    .end local v32    # "size":I
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_6

    .line 584
    :cond_c
    if-eqz v9, :cond_d

    .line 585
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;)V

    goto :goto_6

    .line 587
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;I)V

    goto :goto_6

    .line 604
    .end local v11    # "view":Landroid/view/View;
    :cond_e
    if-eqz v18, :cond_10

    .line 606
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(FI)V

    .line 608
    const/16 v25, 0x0

    .line 609
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v7, :cond_10

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 611
    .restart local v11    # "view":Landroid/view/View;
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/ac;->e(Landroid/view/View;)I

    move-result v32

    .line 613
    .restart local v32    # "size":I
    move/from16 v0, v32

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 614
    move/from16 v25, v32

    .line 609
    :cond_f
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 621
    .end local v11    # "view":Landroid/view/View;
    .end local v32    # "size":I
    :cond_10
    const/16 v21, 0x0

    :goto_8
    move/from16 v0, v21

    if-ge v0, v7, :cond_13

    .line 622
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 623
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/ac;->e(Landroid/view/View;)I

    move-result v4

    move/from16 v0, v25

    if-eq v4, v0, :cond_11

    .line 624
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 625
    .restart local v24    # "lp":Landroid/support/v7/widget/GridLayoutManager$b;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->e:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 626
    .local v17, "decorInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->bottomMargin:I

    add-int v35, v4, v5

    .line 628
    .local v35, "verticalInsets":I
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->rightMargin:I

    add-int v20, v4, v5

    .line 630
    .local v20, "horizontalInsets":I
    move-object/from16 v0, v24

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->c:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->a(II)I

    move-result v34

    .line 633
    .local v34, "totalSpaceInOther":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 634
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    const/4 v6, 0x0

    move/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v4, v1, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v36

    .line 636
    .local v36, "wSpec":I
    sub-int v4, v25, v35

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 644
    .local v19, "hSpec":I
    :goto_9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v19

    invoke-direct {v0, v11, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 621
    .end local v17    # "decorInsets":Landroid/graphics/Rect;
    .end local v19    # "hSpec":I
    .end local v20    # "horizontalInsets":I
    .end local v24    # "lp":Landroid/support/v7/widget/GridLayoutManager$b;
    .end local v34    # "totalSpaceInOther":I
    .end local v35    # "verticalInsets":I
    .end local v36    # "wSpec":I
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 639
    .restart local v17    # "decorInsets":Landroid/graphics/Rect;
    .restart local v20    # "horizontalInsets":I
    .restart local v24    # "lp":Landroid/support/v7/widget/GridLayoutManager$b;
    .restart local v34    # "totalSpaceInOther":I
    .restart local v35    # "verticalInsets":I
    :cond_12
    sub-int v4, v25, v20

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v36

    .line 641
    .restart local v36    # "wSpec":I
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    const/4 v6, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v0, v4, v1, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v19

    .restart local v19    # "hSpec":I
    goto :goto_9

    .line 648
    .end local v11    # "view":Landroid/view/View;
    .end local v17    # "decorInsets":Landroid/graphics/Rect;
    .end local v19    # "hSpec":I
    .end local v20    # "horizontalInsets":I
    .end local v24    # "lp":Landroid/support/v7/widget/GridLayoutManager$b;
    .end local v34    # "totalSpaceInOther":I
    .end local v35    # "verticalInsets":I
    .end local v36    # "wSpec":I
    :cond_13
    move/from16 v0, v25

    move-object/from16 v1, p4

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    .line 650
    const/4 v12, 0x0

    .local v12, "left":I
    const/4 v14, 0x0

    .local v14, "right":I
    const/4 v13, 0x0

    .local v13, "top":I
    const/4 v15, 0x0

    .line 651
    .local v15, "bottom":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    .line 652
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->m:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 653
    move-object/from16 v0, p3

    iget v15, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->i:I

    .line 654
    sub-int v13, v15, v25

    .line 668
    :goto_a
    const/16 v21, 0x0

    :goto_b
    move/from16 v0, v21

    if-ge v0, v7, :cond_1b

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 670
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 671
    .local v29, "params":Landroid/support/v7/widget/GridLayoutManager$b;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 672
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->l()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->M()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    move-object/from16 v0, v29

    iget v10, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    sub-int/2addr v6, v10

    aget v5, v5, v6

    add-int v14, v4, v5

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/ac;->f(Landroid/view/View;)I

    move-result v4

    sub-int v12, v14, v4

    :goto_c
    move-object/from16 v10, p0

    .line 685
    invoke-virtual/range {v10 .. v15}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IIII)V

    .line 693
    invoke-virtual/range {v29 .. v29}, Landroid/support/v7/widget/GridLayoutManager$b;->e()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual/range {v29 .. v29}, Landroid/support/v7/widget/GridLayoutManager$b;->f()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 694
    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    .line 696
    :cond_15
    move-object/from16 v0, p4

    iget-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v0, p4

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    .line 668
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 656
    .end local v11    # "view":Landroid/view/View;
    .end local v29    # "params":Landroid/support/v7/widget/GridLayoutManager$b;
    :cond_16
    move-object/from16 v0, p3

    iget v13, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->i:I

    .line 657
    add-int v15, v13, v25

    goto :goto_a

    .line 660
    :cond_17
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->m:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    .line 661
    move-object/from16 v0, p3

    iget v14, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->i:I

    .line 662
    sub-int v12, v14, v25

    goto :goto_a

    .line 664
    :cond_18
    move-object/from16 v0, p3

    iget v12, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->i:I

    .line 665
    add-int v14, v12, v25

    goto :goto_a

    .line 676
    .restart local v11    # "view":Landroid/view/View;
    .restart local v29    # "params":Landroid/support/v7/widget/GridLayoutManager$b;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->M()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    aget v5, v5, v6

    add-int v12, v4, v5

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/ac;->f(Landroid/view/View;)I

    move-result v4

    add-int v14, v12, v4

    goto :goto_c

    .line 680
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->N()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    aget v5, v5, v6

    add-int v13, v4, v5

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/ac;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/ac;->f(Landroid/view/View;)I

    move-result v4

    add-int v15, v13, v4

    goto :goto_c

    .line 698
    .end local v11    # "view":Landroid/view/View;
    .end local v29    # "params":Landroid/support/v7/widget/GridLayoutManager$b;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->e:[Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;Landroid/support/v4/view/a/h;)V
    .locals 10
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/a/h;

    .prologue
    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 146
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v9, Landroid/support/v7/widget/GridLayoutManager$b;

    if-nez v0, :cond_0

    .line 147
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;Landroid/support/v4/view/a/h;)V

    .line 163
    :goto_0
    return-void

    :cond_0
    move-object v8, v9

    .line 150
    check-cast v8, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 151
    .local v8, "glp":Landroid/support/v7/widget/GridLayoutManager$b;
    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$b;->h()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v2

    .line 152
    .local v2, "spanGroupIndex":I
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v0

    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 156
    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    .line 153
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/h$n;->a(IIIIZZ)Landroid/support/v4/view/a/h$n;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/h;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 158
    :cond_2
    const/4 v3, 0x1

    .line 160
    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v4

    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v5

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 161
    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    .line 158
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/a/h$n;->a(IIIIZZ)Landroid/support/v4/view/a/h$n;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/h;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:Z

    .line 181
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$LayoutManager$a;)V
    .locals 6
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p2, "layoutState"    # Landroid/support/v7/widget/LinearLayoutManager$c;
    .param p3, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$a;

    .prologue
    .line 510
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 511
    .local v2, "remainingSpan":I
    const/4 v0, 0x0

    .line 512
    .local v0, "count":I
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    if-ge v0, v4, :cond_0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$t;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-lez v2, :cond_0

    .line 513
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    .line 514
    .local v1, "pos":I
    const/4 v4, 0x0

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->n:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager$a;->b(II)V

    .line 515
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v3

    .line 516
    .local v3, "spanSize":I
    sub-int/2addr v2, v3

    .line 517
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->k:I

    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 519
    goto :goto_0

    .line 520
    .end local v1    # "pos":I
    .end local v3    # "spanSize":I
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 206
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 201
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 222
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 217
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 112
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$h;)Z
    .locals 1
    .param p1, "lp"    # Landroid/support/v7/widget/RecyclerView$h;

    .prologue
    .line 251
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$b;

    return v0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 379
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ae()V

    .line 380
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->af()V

    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    const/4 v1, 0x1

    .line 131
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->n:I

    if-ne v0, v1, :cond_0

    .line 132
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->i()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 135
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Landroid/support/v7/widget/GridLayoutManager$c;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    return-object v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 211
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    return v0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ad()V

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)V

    .line 174
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ac()V

    .line 175
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
