.class public Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;
.super Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->mContext:Landroid/content/Context;

    .line 31
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->setNumColumns(I)V

    .line 32
    return-void
.end method

.method private getResourceByStatus(Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;)I
    .locals 1
    .param p1, "course"    # Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->isPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const v0, 0x7f08013a

    .line 93
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->isLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const v0, 0x7f080139

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->isRmb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const v0, 0x7f080138

    goto :goto_0

    .line 93
    :cond_2
    const v0, 0x7f08013b

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    if-nez p2, :cond_2

    .line 46
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00de

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    new-instance v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;-><init>()V

    .line 48
    .local v2, "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;
    const v3, 0x7f090273

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;->a:Landroid/widget/ImageView;

    .line 49
    const v3, 0x7f0901e4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;->b:Landroid/widget/TextView;

    .line 50
    const v3, 0x7f090135

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;->c:Landroid/widget/TextView;

    .line 51
    const v3, 0x7f0901be

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;->d:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->relayoutItemView(Landroid/view/View;)V

    .line 61
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;

    .line 63
    .local v0, "course":Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->thmb:Ljava/lang/String;

    iget-object v5, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;->a:Landroid/widget/ImageView;

    .line 65
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v6

    .line 63
    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 66
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->ttl:Ljava/lang/String;

    .line 67
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
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

    if-eqz v3, :cond_0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_0
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;->c:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->cttl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->getResourceByStatus(Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v4, v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->isPlay()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    return-object p2

    .line 56
    .end local v2    # "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;

    .restart local v2    # "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter$a;
    goto/16 :goto_0

    .line 77
    .restart local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;
    .restart local v1    # "text":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

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

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->setPaddingAndMargin(Landroid/view/View;Landroid/view/View;I)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    :cond_0
    if-eqz p2, :cond_1

    .line 125
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 129
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
            "Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;>;"
    if-eqz p2, :cond_0

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/InteracCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
