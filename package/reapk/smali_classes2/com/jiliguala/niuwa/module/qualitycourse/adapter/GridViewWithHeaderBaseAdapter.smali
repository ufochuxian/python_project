.class public abstract Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$a;,
        Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;
    }
.end annotation


# static fields
.field public static final RATIO:F = 0.6666667f


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mGridItemClickListener:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;

.field public mItemHeight:I

.field public mItemWidth:I

.field private mNumColumns:I

.field private mRowPadding:I

.field public params:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mItemWidth:I

    .line 24
    iget v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mItemWidth:I

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mItemHeight:I

    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mNumColumns:I

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->onGridItemClicked(Landroid/view/View;I)V

    return-void
.end method

.method private createItemRow(ILandroid/view/ViewGroup;I)Landroid/widget/LinearLayout;
    .locals 12
    .param p1, "position"    # I
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "columnWidth"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 86
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    iget v8, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mRowPadding:I

    iget v9, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mRowPadding:I

    invoke-virtual {v3, v8, v10, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 90
    const/4 v4, 0x0

    .local v4, "leftView":Landroid/view/View;
    const/4 v6, 0x0

    .line 91
    .local v6, "rightView":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v8, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mNumColumns:I

    if-ge v1, v8, :cond_2

    .line 92
    iget v8, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mNumColumns:I

    mul-int/2addr v8, p1

    add-int v0, v8, v1

    .line 95
    .local v0, "currentPos":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->getItemCount()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 96
    invoke-virtual {p0, v0, v11, p2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "insideView":Landroid/view/View;
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {p0, v0, v2, p2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 99
    .local v7, "theView":Landroid/view/View;
    new-instance v8, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$a;

    invoke-direct {v8, p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .end local v7    # "theView":Landroid/view/View;
    :goto_1
    if-nez v1, :cond_1

    .line 105
    move-object v4, v2

    .line 111
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 115
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    const/4 v8, -0x1

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "insideView":Landroid/view/View;
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0, v10, v11, p2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 102
    .restart local v2    # "insideView":Landroid/view/View;
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 107
    :cond_1
    move-object v6, v2

    goto :goto_2

    .line 119
    .end local v0    # "currentPos":I
    .end local v2    # "insideView":Landroid/view/View;
    :cond_2
    iget v8, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mNumColumns:I

    invoke-virtual {p0, v4, v6, v8}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->setPaddingAndMargin(Landroid/view/View;Landroid/view/View;I)V

    .line 121
    return-object v3
.end method

.method private final onGridItemClicked(Landroid/view/View;I)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mGridItemClickListener:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mGridItemClickListener:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;->onGridItemClicked(Landroid/view/View;IJ)V

    .line 44
    :cond_0
    return-void
.end method

.method private updateItemRow(ILandroid/view/ViewGroup;Landroid/widget/LinearLayout;I)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "layout"    # Landroid/widget/LinearLayout;
    .param p4, "columnWidth"    # I

    .prologue
    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mNumColumns:I

    if-ge v1, v5, :cond_4

    .line 134
    iget v5, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mNumColumns:I

    mul-int/2addr v5, p1

    add-int v0, v5, v1

    .line 135
    .local v0, "currentPos":I
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 137
    .local v2, "insideView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 138
    new-instance v2, Landroid/view/View;

    .end local v2    # "insideView":Landroid/view/View;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 139
    .restart local v2    # "insideView":Landroid/view/View;
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 143
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->getItemCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 147
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {p0, v0, v2, p2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 150
    .local v4, "theView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 151
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 152
    invoke-virtual {p3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 154
    :cond_1
    new-instance v5, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$a;

    invoke-direct {v5, p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    .end local v4    # "theView":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 162
    .end local v0    # "currentPos":I
    .end local v2    # "insideView":Landroid/view/View;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->getNumColumns()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public abstract getItemCount()I
.end method

.method protected abstract getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getNumColumns()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mNumColumns:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "columnWidth":I
    if-eqz p3, :cond_1

    .line 69
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mRowPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mNumColumns:I

    div-int v0, v2, v3

    .line 74
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 76
    invoke-direct {p0, p1, p3, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->createItemRow(ILandroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 81
    .local v1, "layout":Landroid/widget/LinearLayout;
    :goto_1
    return-object v1

    .line 70
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    :cond_1
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mRowPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mNumColumns:I

    div-int v0, v2, v3

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 78
    check-cast v1, Landroid/widget/LinearLayout;

    .line 79
    .restart local v1    # "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0, p1, p3, v1, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->updateItemRow(ILandroid/view/ViewGroup;Landroid/widget/LinearLayout;I)V

    goto :goto_1
.end method

.method public relayoutItemView(Landroid/view/View;)V
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->params:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->params:Landroid/widget/RelativeLayout$LayoutParams;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->params:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->params:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mItemHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void
.end method

.method public final setNumColumns(I)V
    .locals 0
    .param p1, "numColumns"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mNumColumns:I

    .line 52
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->notifyDataSetChanged()V

    .line 53
    return-void
.end method

.method public final setOnGridClickListener(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mGridItemClickListener:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;

    .line 38
    return-void
.end method

.method protected setPaddingAndMargin(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "leftView"    # Landroid/view/View;
    .param p2, "rightView"    # Landroid/view/View;
    .param p3, "culumn"    # I

    .prologue
    .line 126
    return-void
.end method

.method public setRowPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->mRowPadding:I

    .line 130
    return-void
.end method
