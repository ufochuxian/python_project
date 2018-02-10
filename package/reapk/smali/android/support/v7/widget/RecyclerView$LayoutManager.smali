.class public abstract Landroid/support/v7/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager$a;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:I

.field D:Z

.field private final a:Landroid/support/v7/widget/aw$b;

.field private final b:Landroid/support/v7/widget/aw$b;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field u:Landroid/support/v7/widget/n;

.field v:Landroid/support/v7/widget/RecyclerView;

.field w:Landroid/support/v7/widget/aw;

.field x:Landroid/support/v7/widget/aw;

.field y:Landroid/support/v7/widget/RecyclerView$s;
    .annotation build Landroid/support/annotation/aa;
    .end annotation
.end field

.field z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6869
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager$1;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a:Landroid/support/v7/widget/aw$b;

    .line 6915
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager$2;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b:Landroid/support/v7/widget/aw$b;

    .line 6965
    new-instance v0, Landroid/support/v7/widget/aw;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a:Landroid/support/v7/widget/aw$b;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/aw;-><init>(Landroid/support/v7/widget/aw$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/aw;

    .line 6966
    new-instance v0, Landroid/support/v7/widget/aw;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b:Landroid/support/v7/widget/aw$b;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/aw;-><init>(Landroid/support/v7/widget/aw$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->x:Landroid/support/v7/widget/aw;

    .line 6971
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->z:Z

    .line 6973
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->A:Z

    .line 6975
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->B:Z

    .line 6981
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c:Z

    .line 6983
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d:Z

    .line 9913
    return-void
.end method

.method public static a(III)I
    .locals 3
    .param p0, "spec"    # I
    .param p1, "desired"    # I
    .param p2, "min"    # I

    .prologue
    .line 7170
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7171
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7172
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 7179
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v1    # "size":I
    :goto_0
    :sswitch_0
    return v1

    .line 7176
    .restart local v1    # "size":I
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 7172
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(IIIIZ)I
    .locals 7
    .param p0, "parentSize"    # I
    .param p1, "parentMode"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I
    .param p4, "canScroll"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 8698
    const/4 v3, 0x0

    sub-int v4, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8699
    .local v2, "size":I
    const/4 v1, 0x0

    .line 8700
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 8701
    .local v0, "resultMode":I
    if-eqz p4, :cond_3

    .line 8702
    if-ltz p3, :cond_1

    .line 8703
    move v1, p3

    .line 8704
    const/high16 v0, 0x40000000    # 2.0f

    .line 8739
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 8705
    :cond_1
    if-ne p3, v6, :cond_2

    .line 8706
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 8709
    :sswitch_0
    move v1, v2

    .line 8710
    move v0, p1

    .line 8711
    goto :goto_0

    .line 8713
    :sswitch_1
    const/4 v1, 0x0

    .line 8714
    const/4 v0, 0x0

    goto :goto_0

    .line 8717
    :cond_2
    if-ne p3, v5, :cond_0

    .line 8718
    const/4 v1, 0x0

    .line 8719
    const/4 v0, 0x0

    goto :goto_0

    .line 8722
    :cond_3
    if-ltz p3, :cond_4

    .line 8723
    move v1, p3

    .line 8724
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 8725
    :cond_4
    if-ne p3, v6, :cond_5

    .line 8726
    move v1, v2

    .line 8727
    move v0, p1

    goto :goto_0

    .line 8728
    :cond_5
    if-ne p3, v5, :cond_0

    .line 8729
    move v1, v2

    .line 8730
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_7

    .line 8731
    :cond_6
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 8733
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 8706
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(IIIZ)I
    .locals 5
    .param p0, "parentSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I
    .param p3, "canScroll"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8655
    const/4 v3, 0x0

    sub-int v4, p0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8656
    .local v2, "size":I
    const/4 v1, 0x0

    .line 8657
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 8658
    .local v0, "resultMode":I
    if-eqz p3, :cond_2

    .line 8659
    if-ltz p2, :cond_1

    .line 8660
    move v1, p2

    .line 8661
    const/high16 v0, 0x40000000    # 2.0f

    .line 8681
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 8665
    :cond_1
    const/4 v1, 0x0

    .line 8666
    const/4 v0, 0x0

    goto :goto_0

    .line 8669
    :cond_2
    if-ltz p2, :cond_3

    .line 8670
    move v1, p2

    .line 8671
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 8672
    :cond_3
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    .line 8673
    move v1, v2

    .line 8675
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 8676
    :cond_4
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 8677
    move v1, v2

    .line 8678
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9866
    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    .line 9867
    .local v1, "properties":Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    sget-object v2, Landroid/support/v7/e/b$d;->RecyclerView:[I

    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 9869
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/e/b$d;->RecyclerView_android_orientation:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->a:I

    .line 9870
    sget v2, Landroid/support/v7/e/b$d;->RecyclerView_spanCount:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->b:I

    .line 9871
    sget v2, Landroid/support/v7/e/b$d;->RecyclerView_reverseLayout:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->c:Z

    .line 9872
    sget v2, Landroid/support/v7/e/b$d;->RecyclerView_stackFromEnd:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->d:Z

    .line 9873
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 9874
    return-object v1
.end method

.method private a(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 8066
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/n;->e(I)V

    .line 8067
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$s;

    .prologue
    .line 6861
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/support/v7/widget/RecyclerView$s;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;ILandroid/view/View;)V
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 8452
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 8453
    .local v0, "viewHolder":Landroid/support/v7/widget/RecyclerView$w;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8468
    :goto_0
    return-void

    .line 8459
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$a;

    .line 8460
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8461
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h(I)V

    .line 8462
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    goto :goto_0

    .line 8464
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->i(I)V

    .line 8465
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$n;->d(Landroid/view/View;)V

    .line 8466
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ax;->h(Landroid/support/v7/widget/RecyclerView$w;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "disappearing"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 7839
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v1

    .line 7840
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$w;
    if-nez p3, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7842
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/ax;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ax;->e(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 7851
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$h;

    .line 7852
    .local v2, "lp":Landroid/support/v7/widget/RecyclerView$h;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7853
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7854
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->unScrap()V

    .line 7858
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/support/v7/widget/n;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7883
    :cond_2
    :goto_2
    iget-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$h;->g:Z

    if-eqz v3, :cond_3

    .line 7887
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 7888
    iput-boolean v5, v2, Landroid/support/v7/widget/RecyclerView$h;->g:Z

    .line 7890
    :cond_3
    return-void

    .line 7849
    .end local v2    # "lp":Landroid/support/v7/widget/RecyclerView$h;
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/ax;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ax;->f(Landroid/support/v7/widget/RecyclerView$w;)V

    goto :goto_0

    .line 7856
    .restart local v2    # "lp":Landroid/support/v7/widget/RecyclerView$h;
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 7862
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-ne v3, v4, :cond_9

    .line 7864
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/n;->b(Landroid/view/View;)I

    move-result v0

    .line 7865
    .local v0, "currentIndex":I
    if-ne p2, v6, :cond_7

    .line 7866
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v3}, Landroid/support/v7/widget/n;->b()I

    move-result p2

    .line 7868
    :cond_7
    if-ne v0, v6, :cond_8

    .line 7869
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 7871
    invoke-virtual {v5, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7873
    :cond_8
    if-eq v0, p2, :cond_2

    .line 7874
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f(II)V

    goto :goto_2

    .line 7877
    .end local v0    # "currentIndex":I
    :cond_9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v3, p1, p2, v5}, Landroid/support/v7/widget/n;->a(Landroid/view/View;IZ)V

    .line 7878
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$h;->f:Z

    .line 7879
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7880
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$s;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 1
    .param p1, "smoothScroller"    # Landroid/support/v7/widget/RecyclerView$s;

    .prologue
    .line 9544
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    if-ne v0, p1, :cond_0

    .line 9545
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    .line 9547
    :cond_0
    return-void
.end method

.method private static b(III)Z
    .locals 4
    .param p0, "childSize"    # I
    .param p1, "spec"    # I
    .param p2, "dimension"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8592
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8593
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 8594
    .local v1, "specSize":I
    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    move v2, v3

    .line 8605
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 8597
    :cond_1
    sparse-switch v0, :sswitch_data_0

    move v2, v3

    .line 8605
    goto :goto_0

    .line 8601
    :sswitch_1
    if-ge v1, p0, :cond_0

    move v2, v3

    goto :goto_0

    .line 8603
    :sswitch_2
    if-eq v1, p0, :cond_0

    move v2, v3

    goto :goto_0

    .line 8597
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .locals 19
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 9088
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 9089
    .local v12, "out":[I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v14

    .line 9090
    .local v14, "parentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v16

    .line 9091
    .local v16, "parentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v18

    sub-int v15, v17, v18

    .line 9092
    .local v15, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->P()I

    move-result v18

    sub-int v13, v17, v18

    .line 9093
    .local v13, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v17

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v18

    sub-int v3, v17, v18

    .line 9094
    .local v3, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v17

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v18

    sub-int v5, v17, v18

    .line 9095
    .local v5, "childTop":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v17

    add-int v4, v3, v17

    .line 9096
    .local v4, "childRight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v17

    add-int v2, v5, v17

    .line 9098
    .local v2, "childBottom":I
    const/16 v17, 0x0

    sub-int v18, v3, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 9099
    .local v9, "offScreenLeft":I
    const/16 v17, 0x0

    sub-int v18, v5, v16

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 9100
    .local v11, "offScreenTop":I
    const/16 v17, 0x0

    sub-int v18, v4, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 9101
    .local v10, "offScreenRight":I
    const/16 v17, 0x0

    sub-int v18, v2, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 9107
    .local v8, "offScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->E()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 9108
    if-eqz v10, :cond_0

    move v6, v10

    .line 9117
    .local v6, "dx":I
    :goto_0
    if-eqz v11, :cond_3

    move v7, v11

    .line 9119
    .local v7, "dy":I
    :goto_1
    const/16 v17, 0x0

    aput v6, v12, v17

    .line 9120
    const/16 v17, 0x1

    aput v7, v12, v17

    .line 9121
    return-object v12

    .line 9108
    .end local v6    # "dx":I
    .end local v7    # "dy":I
    :cond_0
    sub-int v17, v4, v15

    .line 9109
    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 9111
    :cond_1
    if-eqz v9, :cond_2

    move v6, v9

    .line 9112
    .restart local v6    # "dx":I
    :goto_2
    goto :goto_0

    .line 9111
    .end local v6    # "dx":I
    :cond_2
    sub-int v17, v3, v14

    .line 9112
    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_2

    .line 9117
    .restart local v6    # "dx":I
    :cond_3
    sub-int v17, v5, v16

    .line 9118
    move/from16 v0, v17

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1
.end method

.method private d(Landroid/support/v7/widget/RecyclerView;II)Z
    .locals 9
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v6, 0x0

    .line 9219
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 9220
    .local v1, "focusedChild":Landroid/view/View;
    if-nez v1, :cond_1

    .line 9234
    :cond_0
    :goto_0
    return v6

    .line 9223
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v3

    .line 9224
    .local v3, "parentLeft":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v5

    .line 9225
    .local v5, "parentTop":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v8

    sub-int v4, v7, v8

    .line 9226
    .local v4, "parentRight":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->P()I

    move-result v8

    sub-int v2, v7, v8

    .line 9227
    .local v2, "parentBottom":I
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->A:Landroid/graphics/Rect;

    .line 9228
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9230
    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, p2

    if-ge v7, v4, :cond_0

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, p2

    if-le v7, v3, :cond_0

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, p3

    if-ge v7, v2, :cond_0

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, p3

    if-le v7, v5, :cond_0

    .line 9234
    const/4 v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 7338
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 7410
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->A:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 7510
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 7752
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 7765
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ap;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public F()V
    .locals 3

    .prologue
    .line 7925
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->H()I

    move-result v0

    .line 7926
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 7927
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/n;->a(I)V

    .line 7926
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7929
    :cond_0
    return-void
.end method

.method public G()I
    .locals 1

    .prologue
    .line 7938
    const/4 v0, -0x1

    return v0
.end method

.method public H()I
    .locals 1

    .prologue
    .line 8198
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()I
    .locals 1

    .prologue
    .line 8225
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e:I

    return v0
.end method

.method public J()I
    .locals 1

    .prologue
    .line 8243
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f:I

    return v0
.end method

.method public K()I
    .locals 1

    .prologue
    .line 8252
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g:I

    return v0
.end method

.method public L()I
    .locals 1

    .prologue
    .line 8261
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h:I

    return v0
.end method

.method public M()I
    .locals 1

    .prologue
    .line 8270
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N()I
    .locals 1

    .prologue
    .line 8279
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()I
    .locals 1

    .prologue
    .line 8288
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public P()I
    .locals 1

    .prologue
    .line 8297
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()I
    .locals 1

    .prologue
    .line 8306
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ap;->r(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public R()I
    .locals 1

    .prologue
    .line 8315
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ap;->s(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 8325
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 8335
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public U()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 8344
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 8351
    :cond_0
    :goto_0
    return-object v0

    .line 8347
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 8348
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/n;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 8349
    goto :goto_0
.end method

.method public V()I
    .locals 2

    .prologue
    .line 8365
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    .line 8366
    .local v0, "a":Landroid/support/v7/widget/RecyclerView$a;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    :goto_1
    return v1

    .line 8365
    .end local v0    # "a":Landroid/support/v7/widget/RecyclerView$a;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8366
    .restart local v0    # "a":Landroid/support/v7/widget/RecyclerView$a;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public W()Z
    .locals 1

    .prologue
    .line 8576
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c:Z

    return v0
.end method

.method public X()I
    .locals 1

    .prologue
    .line 9509
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ap;->y(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public Y()I
    .locals 1

    .prologue
    .line 9516
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ap;->z(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method Z()V
    .locals 1

    .prologue
    .line 9538
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v0, :cond_0

    .line 9539
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->f()V

    .line 9541
    :cond_0
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 7668
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    const/4 v0, 0x1

    .line 9742
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v1, :cond_1

    .line 9745
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public abstract a()Landroid/support/v7/widget/RecyclerView$h;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 7651
    new-instance v0, Landroid/support/v7/widget/RecyclerView$h;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$h;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7627
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    .line 7628
    new-instance v0, Landroid/support/v7/widget/RecyclerView$h;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$h;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;-><init>(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 7632
    :goto_0
    return-object v0

    .line 7629
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7630
    new-instance v0, Landroid/support/v7/widget/RecyclerView$h;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 7632
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$h;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 9051
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$LayoutManager$a;)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p4, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$a;

    .prologue
    .line 7362
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$LayoutManager$a;)V
    .locals 0
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$a;

    .prologue
    .line 7390
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$n;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;

    .prologue
    .line 8164
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 8165
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p2, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;ILandroid/view/View;)V

    .line 8166
    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 6
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 7130
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v5

    add-int v2, v4, v5

    .line 7131
    .local v2, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->P()I

    move-result v5

    add-int v1, v4, v5

    .line 7132
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->X()I

    move-result v4

    invoke-static {p2, v2, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(III)I

    move-result v3

    .line 7133
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->Y()I

    move-result v4

    invoke-static {p3, v1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(III)I

    move-result v0

    .line 7134
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g(II)V

    .line 7135
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 9535
    return-void
.end method

.method a(Landroid/support/v4/view/a/h;)V
    .locals 2
    .param p1, "info"    # Landroid/support/v4/view/a/h;

    .prologue
    .line 9580
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v4/view/a/h;)V

    .line 9581
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 0
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$a;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$a;

    .prologue
    .line 9281
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 3
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;

    .prologue
    .line 8444
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->H()I

    move-result v0

    .line 8445
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 8446
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v2

    .line 8447
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;ILandroid/view/View;)V

    .line 8445
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8449
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;II)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    .line 9491
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 9492
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v4/view/a/h;)V
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "info"    # Landroid/support/v4/view/a/h;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 9610
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ap;->b(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 9611
    invoke-static {v1, v3}, Landroid/support/v4/view/ap;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9612
    :cond_0
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/a/h;->d(I)V

    .line 9613
    invoke-virtual {p3, v2}, Landroid/support/v4/view/a/h;->l(Z)V

    .line 9615
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ap;->b(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 9616
    invoke-static {v1, v2}, Landroid/support/v4/view/ap;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9617
    :cond_2
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/a/h;->d(I)V

    .line 9618
    invoke-virtual {p3, v2}, Landroid/support/v4/view/a/h;->l(Z)V

    .line 9622
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v1

    .line 9623
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v2

    .line 9624
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)Z

    move-result v3

    .line 9625
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v4

    .line 9622
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/a/h$m;->a(IIZI)Landroid/support/v4/view/a/h$m;

    move-result-object v0

    .line 9626
    .local v0, "collectionInfo":Landroid/support/v4/view/a/h$m;
    invoke-virtual {p3, v0}, Landroid/support/v4/view/a/h;->b(Ljava/lang/Object;)V

    .line 9627
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;Landroid/support/v4/view/a/h;)V
    .locals 7
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/a/h;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 9688
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v0

    .line 9689
    .local v0, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v2

    .local v2, "columnIndexGuess":I
    :goto_1
    move v3, v1

    move v5, v4

    .line 9691
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/h$n;->a(IIIIZZ)Landroid/support/v4/view/a/h$n;

    move-result-object v6

    .line 9693
    .local v6, "itemInfo":Landroid/support/v4/view/a/h$n;
    invoke-virtual {p4, v6}, Landroid/support/v4/view/a/h;->c(Ljava/lang/Object;)V

    .line 9694
    return-void

    .end local v0    # "rowIndexGuess":I
    .end local v2    # "columnIndexGuess":I
    .end local v6    # "itemInfo":Landroid/support/v4/view/a/h$n;
    :cond_0
    move v0, v4

    .line 9688
    goto :goto_0

    .restart local v0    # "rowIndexGuess":I
    :cond_1
    move v2, v4

    .line 9689
    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 9647
    .line 9648
    invoke-static {p3}, Landroid/support/v4/view/a/a;->b(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/u;

    move-result-object v0

    .line 9649
    .local v0, "record":Landroid/support/v4/view/a/u;
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 9660
    :cond_0
    :goto_0
    return-void

    .line 9652
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v1}, Landroid/support/v4/view/ap;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 9653
    invoke-static {v2, v3}, Landroid/support/v4/view/ap;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 9654
    invoke-static {v2, v3}, Landroid/support/v4/view/ap;->a(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 9655
    invoke-static {v2, v1}, Landroid/support/v4/view/ap;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9652
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/u;->e(Z)V

    .line 9657
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v1, :cond_0

    .line 9658
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/u;->a(I)V

    goto :goto_0

    .line 9655
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 2
    .param p1, "smoothScroller"    # Landroid/support/v7/widget/RecyclerView$s;

    .prologue
    .line 7740
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    .line 7741
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7742
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->f()V

    .line 7744
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    .line 7745
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Landroid/support/v7/widget/RecyclerView$s;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 7746
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 0
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 7580
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 9319
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9331
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 9383
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 9366
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9367
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    .line 7501
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/support/v7/widget/RecyclerView;)V

    .line 7502
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "position"    # I

    .prologue
    .line 7731
    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7732
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7775
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v0, :cond_0

    .line 7776
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$e;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$e;->d(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 7778
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 7812
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IZ)V

    .line 7813
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 8522
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$h;

    .line 8524
    .local v2, "lp":Landroid/support/v7/widget/RecyclerView$h;
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8525
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 8526
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 8527
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->I()I

    move-result v5

    .line 8528
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$h;->width:I

    .line 8529
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v8

    .line 8527
    invoke-static {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v3

    .line 8530
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->J()I

    move-result v5

    .line 8531
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->P()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$h;->height:I

    .line 8532
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v8

    .line 8530
    invoke-static {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v0

    .line 8533
    .local v0, "heightSpec":I
    invoke-virtual {p0, p1, v3, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$h;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8534
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 8536
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 8801
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$h;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$h;->e:Landroid/graphics/Rect;

    .line 8802
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 8804
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$h;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "lp"    # Landroid/support/v7/widget/RecyclerView$h;

    .prologue
    .line 8079
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 8080
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$w;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8081
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ax;->e(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 8085
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/support/v7/widget/n;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8089
    return-void

    .line 8083
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ax;->f(Landroid/support/v7/widget/RecyclerView$w;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 8889
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8890
    return-void
.end method

.method a(Landroid/view/View;Landroid/support/v4/view/a/h;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/a/h;

    .prologue
    .line 9664
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 9666
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$w;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/n;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9667
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p0, v1, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;Landroid/support/v4/view/a/h;)V

    .line 9670
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;

    .prologue
    .line 8150
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/n;->b(Landroid/view/View;)I

    move-result v0

    .line 8151
    .local v0, "index":I
    invoke-direct {p0, p2, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;ILandroid/view/View;)V

    .line 8152
    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "includeDecorInsets"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 8856
    if-eqz p2, :cond_1

    .line 8857
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, v3, Landroid/support/v7/widget/RecyclerView$h;->e:Landroid/graphics/Rect;

    .line 8858
    .local v1, "insets":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    .line 8859
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 8858
    invoke-virtual {p3, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 8864
    .end local v1    # "insets":Landroid/graphics/Rect;
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    .line 8865
    invoke-static {p1}, Landroid/support/v4/view/ap;->x(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 8866
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8867
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView;->B:Landroid/graphics/RectF;

    .line 8868
    .local v2, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8869
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8870
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v3

    .line 8871
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    .line 8872
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-double v6, v5

    .line 8873
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    .line 8874
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 8870
    invoke-virtual {p3, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 8878
    .end local v0    # "childMatrix":Landroid/graphics/Matrix;
    .end local v2    # "tempRectF":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 8879
    return-void

    .line 8861
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p3, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 9631
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9632
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 7424
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7425
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ap;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 7427
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7191
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7192
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Ljava/lang/String;)V

    .line 7194
    :cond_0
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 9783
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$h;)Z
    .locals 1
    .param p1, "lp"    # Landroid/support/v7/widget/RecyclerView$h;

    .prologue
    .line 7610
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 9799
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-nez v4, :cond_1

    .line 9825
    :cond_0
    :goto_0
    return v2

    .line 9802
    :cond_1
    const/4 v1, 0x0

    .local v1, "vScroll":I
    const/4 v0, 0x0

    .line 9803
    .local v0, "hScroll":I
    sparse-switch p3, :sswitch_data_0

    .line 9821
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    .line 9824
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v2, v3

    .line 9825
    goto :goto_0

    .line 9805
    :sswitch_0
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4, v6}, Landroid/support/v4/view/ap;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9806
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->P()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v1, v4

    .line 9808
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4, v6}, Landroid/support/v4/view/ap;->a(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9809
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v0, v4

    goto :goto_1

    .line 9813
    :sswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4, v3}, Landroid/support/v4/view/ap;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9814
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->P()I

    move-result v5

    sub-int v1, v4, v5

    .line 9816
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4, v3}, Landroid/support/v4/view/ap;->a(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9817
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_1

    .line 9803
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "action"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .prologue
    .line 9851
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .prologue
    .line 9265
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 9140
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 6
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z
    .param p5, "focusedChildVisible"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9160
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object v2

    .line 9162
    .local v2, "scrollAmount":[I
    aget v0, v2, v3

    .line 9163
    .local v0, "dx":I
    aget v1, v2, v4

    .line 9164
    .local v1, "dy":I
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(Landroid/support/v7/widget/RecyclerView;II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9165
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 9166
    :cond_1
    if-eqz p4, :cond_3

    .line 9167
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :goto_0
    move v3, v4

    .line 9174
    :cond_2
    return v3

    .line 9169
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9243
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->D()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 9309
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$h;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Landroid/support/v7/widget/RecyclerView$h;

    .prologue
    .line 8545
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c:Z

    if-eqz v0, :cond_0

    .line 8546
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$h;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8547
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$h;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 9830
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;ZZ)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "completelyVisible"    # Z
    .param p3, "acceptEndPointInclusion"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9197
    const/16 v0, 0x6003

    .line 9199
    .local v0, "boundsFlag":I
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/aw;

    invoke-virtual {v4, p1, v0}, Landroid/support/v7/widget/aw;->a(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->x:Landroid/support/v7/widget/aw;

    .line 9201
    invoke-virtual {v4, p1, v0}, Landroid/support/v7/widget/aw;->a(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 9202
    .local v1, "isViewFullyVisible":Z
    :goto_0
    if-eqz p2, :cond_1

    .line 9205
    .end local v1    # "isViewFullyVisible":Z
    :goto_1
    return v1

    :cond_0
    move v1, v3

    .line 9201
    goto :goto_0

    .line 9205
    .restart local v1    # "isViewFullyVisible":Z
    :cond_1
    if-nez v1, :cond_2

    :goto_2
    move v1, v2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public aa()V
    .locals 1

    .prologue
    .line 9707
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->z:Z

    .line 9708
    return-void
.end method

.method ab()Z
    .locals 5

    .prologue
    .line 9899
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->H()I

    move-result v1

    .line 9900
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9901
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 9902
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 9903
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    .line 9904
    const/4 v4, 0x1

    .line 9907
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    return v4

    .line 9900
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9907
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 7685
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    const/4 v0, 0x1

    .line 9761
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v1, :cond_1

    .line 9764
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$n;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;

    .prologue
    .line 8186
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 8187
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h(I)V

    .line 8188
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/View;)V

    .line 8189
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 6
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;

    .prologue
    const/4 v5, 0x0

    .line 8480
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$n;->e()I

    move-result v2

    .line 8482
    .local v2, "scrapCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 8483
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->e(I)Landroid/view/View;

    move-result-object v1

    .line 8484
    .local v1, "scrap":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v3

    .line 8485
    .local v3, "vh":Landroid/support/v7/widget/RecyclerView$w;
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8482
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8493
    :cond_0
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView$w;->setIsRecyclable(Z)V

    .line 8494
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8495
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v1, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8497
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v4, :cond_2

    .line 8498
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView$e;->d(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 8500
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$w;->setIsRecyclable(Z)V

    .line 8501
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$n;->c(Landroid/view/View;)V

    goto :goto_1

    .line 8503
    .end local v1    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Landroid/support/v7/widget/RecyclerView$w;
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$n;->f()V

    .line 8504
    if-lez v2, :cond_4

    .line 8505
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 8507
    :cond_4
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 7036
    if-nez p1, :cond_0

    .line 7037
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 7038
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    .line 7039
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g:I

    .line 7040
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h:I

    .line 7047
    :goto_0
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e:I

    .line 7048
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f:I

    .line 7049
    return-void

    .line 7042
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 7043
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/n;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    .line 7044
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g:I

    .line 7045
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h:I

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9341
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;

    .prologue
    .line 7398
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->A:Z

    .line 7399
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V

    .line 7400
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7794
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;I)V

    .line 7795
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 7835
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IZ)V

    .line 7836
    return-void
.end method

.method public b(Landroid/view/View;II)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 8621
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$h;

    .line 8623
    .local v2, "lp":Landroid/support/v7/widget/RecyclerView$h;
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8624
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 8625
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 8627
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->I()I

    move-result v5

    .line 8628
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$h;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$h;->width:I

    .line 8630
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v8

    .line 8627
    invoke-static {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v3

    .line 8631
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->J()I

    move-result v5

    .line 8632
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->P()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$h;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$h;->height:I

    .line 8634
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v8

    .line 8631
    invoke-static {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v0

    .line 8635
    .local v0, "heightSpec":I
    invoke-virtual {p0, p1, v3, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$h;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8636
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 8638
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 8837
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$h;

    .line 8838
    .local v1, "lp":Landroid/support/v7/widget/RecyclerView$h;
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$h;->e:Landroid/graphics/Rect;

    .line 8839
    .local v0, "insets":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$h;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v1, Landroid/support/v7/widget/RecyclerView$h;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$h;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p5, v5

    iget v6, v1, Landroid/support/v7/widget/RecyclerView$h;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 8842
    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 8958
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 8959
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 8964
    :goto_0
    return-void

    .line 8962
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8963
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;

    .prologue
    .line 8175
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(Landroid/view/View;)V

    .line 8176
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/View;)V

    .line 8177
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7154
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7155
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 7157
    :cond_0
    return-void
.end method

.method b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$h;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Landroid/support/v7/widget/RecyclerView$h;

    .prologue
    .line 8559
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c:Z

    if-eqz v0, :cond_0

    .line 8561
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$h;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8562
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$h;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 7444
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7445
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 7447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 9413
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 8006
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->H()I

    move-result v1

    .line 8007
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 8008
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 8009
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v3

    .line 8010
    .local v3, "vh":Landroid/support/v7/widget/RecyclerView$w;
    if-nez v3, :cond_1

    .line 8007
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8013
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->V:Landroid/support/v7/widget/RecyclerView$t;

    .line 8014
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$t;->c()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8018
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "vh":Landroid/support/v7/widget/RecyclerView$w;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 3
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;

    .prologue
    .line 9570
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->H()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 9571
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v1

    .line 9572
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9573
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$n;)V

    .line 9570
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9576
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 7565
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7566
    return-void
.end method

.method c(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 7393
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->A:Z

    .line 7394
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(Landroid/support/v7/widget/RecyclerView;)V

    .line 7395
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9353
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7823
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;I)V

    .line 7824
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 8100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$h;)V

    .line 8101
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 9726
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 9458
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 9071
    const/4 v0, 0x0

    return-object v0
.end method

.method d(II)V
    .locals 2
    .param p1, "wSpec"    # I
    .param p2, "hSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 7052
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g:I

    .line 7053
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e:I

    .line 7054
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e:I

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->e:Z

    if-nez v0, :cond_0

    .line 7055
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g:I

    .line 7058
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h:I

    .line 7059
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f:I

    .line 7060
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f:I

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->e:Z

    if-nez v0, :cond_1

    .line 7061
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h:I

    .line 7063
    :cond_1
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    .line 7465
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7901
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/n;->a(Landroid/view/View;)V

    .line 7902
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 7297
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 9398
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7949
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->h()I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 7718
    return-void
.end method

.method e(II)V
    .locals 9
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 7079
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->H()I

    move-result v2

    .line 7080
    .local v2, "count":I
    if-nez v2, :cond_0

    .line 7081
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, p1, p2}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 7108
    :goto_0
    return-void

    .line 7084
    :cond_0
    const v6, 0x7fffffff

    .line 7085
    .local v6, "minX":I
    const v7, 0x7fffffff

    .line 7086
    .local v7, "minY":I
    const/high16 v4, -0x80000000

    .line 7087
    .local v4, "maxX":I
    const/high16 v5, -0x80000000

    .line 7089
    .local v5, "maxY":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 7090
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v1

    .line 7091
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->A:Landroid/graphics/Rect;

    .line 7092
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7093
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-ge v8, v6, :cond_1

    .line 7094
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 7096
    :cond_1
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_2

    .line 7097
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 7099
    :cond_2
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-ge v8, v7, :cond_3

    .line 7100
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 7102
    :cond_3
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v5, :cond_4

    .line 7103
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 7089
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7106
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "child":Landroid/view/View;
    :cond_5
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->A:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 7107
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->A:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7474
    return-void
.end method

.method public e(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 7261
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->B:Z

    .line 7262
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$t;)Z
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$n;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 9778
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 9443
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7959
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 9529
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 8131
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 8132
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 8133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8136
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->i(I)V

    .line 8137
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/view/View;I)V

    .line 8138
    return-void
.end method

.method f(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 9878
    .line 9879
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9880
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9878
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(II)V

    .line 9882
    return-void
.end method

.method public final f(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 7320
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d:Z

    if-eq p1, v0, :cond_0

    .line 7321
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d:Z

    .line 7322
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->C:I

    .line 7323
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7324
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->b()V

    .line 7327
    :cond_0
    return-void
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 9428
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 7979
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 7989
    :cond_0
    :goto_0
    return-object v0

    .line 7982
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 7983
    .local v0, "found":Landroid/view/View;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 7984
    goto :goto_0

    .line 7986
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/n;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 7987
    goto :goto_0
.end method

.method public g(II)V
    .locals 1
    .param p1, "widthSize"    # I
    .param p2, "heightSize"    # I

    .prologue
    .line 9502
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9503
    return-void
.end method

.method public g(Z)V
    .locals 0
    .param p1, "measurementCacheEnabled"    # Z

    .prologue
    .line 8588
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c:Z

    .line 8589
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 7695
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;

    .prologue
    .line 9473
    const/4 v0, 0x0

    return v0
.end method

.method public h(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 7913
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 7914
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 7915
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/n;->a(I)V

    .line 7917
    :cond_0
    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8037
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/n;->b(Landroid/view/View;)I

    move-result v0

    .line 8038
    .local v0, "ind":I
    if-ltz v0, :cond_0

    .line 8039
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(ILandroid/view/View;)V

    .line 8041
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 7705
    const/4 v0, 0x0

    return v0
.end method

.method public i(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8059
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(ILandroid/view/View;)V

    .line 8060
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8111
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/view/View;I)V

    .line 8112
    return-void
.end method

.method public j(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8207
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/n;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8121
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8122
    return-void
.end method

.method public k(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 8376
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8377
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->h(I)V

    .line 8379
    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8410
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 8413
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "View should be fully attached to be ignored"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8415
    :cond_1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 8416
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$w;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->addFlags(I)V

    .line 8417
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ax;->g(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 8418
    return-void
.end method

.method public l(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 8388
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8389
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->g(I)V

    .line 8391
    :cond_0
    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8430
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    .line 8431
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$w;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->stopIgnoring()V

    .line 8432
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->resetInternal()V

    .line 8433
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->addFlags(I)V

    .line 8434
    return-void
.end method

.method public m(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8752
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$h;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$h;->e:Landroid/graphics/Rect;

    .line 8753
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public m(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 9555
    return-void
.end method

.method public n(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8766
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$h;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$h;->e:Landroid/graphics/Rect;

    .line 8767
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public o(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8901
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public p(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8913
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->s(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public q(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8925
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public r(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8937
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->t(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public s(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8978
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$h;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method s()Z
    .locals 1

    .prologue
    .line 9895
    const/4 v0, 0x0

    return v0
.end method

.method public t(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8993
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$h;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public u(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9008
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$h;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public v(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9023
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$h;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 7141
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7142
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 7144
    :cond_0
    return-void
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 7273
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->B:Z

    return v0
.end method
