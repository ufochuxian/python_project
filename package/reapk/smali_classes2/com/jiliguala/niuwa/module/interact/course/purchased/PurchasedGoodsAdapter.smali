.class public Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;
.super Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->mContext:Landroid/content/Context;

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->setNumColumns(I)V

    .line 33
    return-void
.end method

.method private getResourceByStatus(Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;)I
    .locals 2
    .param p1, "course"    # Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;

    .prologue
    const v0, 0x7f08013b

    .line 80
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->isPlay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const v0, 0x7f08013c

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->isLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->isUnPay()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const v0, 0x7f08013d

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    if-nez p2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00df

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;-><init>()V

    .line 49
    .local v1, "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;
    const v2, 0x7f090278

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;->a:Landroid/widget/ImageView;

    .line 50
    const v2, 0x7f0901e4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;->b:Landroid/widget/TextView;

    .line 51
    const v2, 0x7f090135

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;->c:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f0901be

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;->d:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->relayoutItemView(Landroid/view/View;)V

    .line 62
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;

    .line 64
    .local v0, "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->thmb:Ljava/lang/String;

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 66
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->cttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->getResourceByStatus(Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->isPlay()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    :cond_0
    return-object p2

    .line 57
    .end local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;

    .restart local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter$a;
    goto :goto_0

    .line 72
    .restart local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected setPaddingAndMargin(Landroid/view/View;Landroid/view/View;I)V
    .locals 5
    .param p1, "leftView"    # Landroid/view/View;
    .param p2, "rightView"    # Landroid/view/View;
    .param p3, "culumn"    # I

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->setPaddingAndMargin(Landroid/view/View;Landroid/view/View;I)V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 118
    :cond_0
    if-eqz p2, :cond_1

    .line 119
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    :cond_1
    return-void
.end method

.method public updateDataSet(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;>;"
    if-eqz p2, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
