.class public Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;
.super Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;
    }
.end annotation


# instance fields
.field private mRecommendCourseTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->setNumColumns(I)V

    .line 27
    return-void
.end method

.method private getResourceByStatus(Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;)I
    .locals 1
    .param p1, "course"    # Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->isPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const v0, 0x7f08013a

    .line 120
    :goto_0
    return v0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->isLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const v0, 0x7f080139

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->isRmb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    const v0, 0x7f080138

    goto :goto_0

    .line 120
    :cond_2
    const v0, 0x7f08013b

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->mRecommendCourseTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->mRecommendCourseTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;->hasData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->mRecommendCourseTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_4

    .line 51
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00da

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;-><init>()V

    .line 53
    .local v2, "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;
    const v3, 0x7f090273

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->a:Landroid/widget/ImageView;

    .line 54
    const v3, 0x7f0901e4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->b:Landroid/widget/TextView;

    .line 55
    const v3, 0x7f090135

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->c:Landroid/widget/TextView;

    .line 56
    const v3, 0x7f0901be

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->d:Landroid/widget/ImageView;

    .line 57
    const v3, 0x7f09016c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->e:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->relayoutItemView(Landroid/view/View;)V

    .line 67
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->mRecommendCourseTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->mRecommendCourseTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;->hasData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->mRecommendCourseTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;

    .line 70
    .local v0, "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->thmb:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->thmb:Ljava/lang/String;

    iget-object v5, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->a:Landroid/widget/ImageView;

    .line 73
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v6

    .line 71
    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 76
    :cond_0
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->bicon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->bicon:Ljava/lang/String;

    iget-object v5, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->e:Landroid/widget/ImageView;

    .line 79
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v6

    .line 77
    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 82
    :cond_1
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->getResourceByStatus(Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->c:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->cttl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->ttl:Ljava/lang/String;

    .line 85
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_2
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    return-object p2

    .line 62
    .end local v2    # "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;

    .restart local v2    # "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter$a;
    goto/16 :goto_0
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

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->setPaddingAndMargin(Landroid/view/View;Landroid/view/View;I)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    :cond_0
    if-eqz p2, :cond_1

    .line 106
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 110
    :cond_1
    return-void
.end method

.method public updateData(Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;)V
    .locals 0
    .param p1, "recommendCourseTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->mRecommendCourseTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    .line 126
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCourseAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method
