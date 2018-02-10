.class public Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;
.super Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->mContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->setNumColumns(I)V

    .line 34
    return-void
.end method

.method private addSuffixByStatus(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;)Ljava/lang/String;
    .locals 3
    .param p1, "lesson"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;

    .prologue
    .line 79
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->pic:Ljava/lang/String;

    .line 87
    .local v0, "picUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_entry.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourceByStatus(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;)I
    .locals 1
    .param p1, "storyLesson"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const v0, 0x7f08013a

    .line 99
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const v0, 0x7f080139

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->isUnPay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const v0, 0x7f080138

    goto :goto_0

    .line 99
    :cond_2
    const v0, 0x7f08013b

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    if-nez p2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00de

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    new-instance v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;-><init>()V

    .line 50
    .local v1, "viewHolder":Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;
    const v2, 0x7f090273

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;->a:Landroid/widget/ImageView;

    .line 51
    const v2, 0x7f0901e4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;->b:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f090135

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;->c:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f0901be

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;->d:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->relayoutItemView(Landroid/view/View;)V

    .line 63
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;

    .line 65
    .local v0, "storyLesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->addSuffixByStatus(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 66
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->cttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->getResourceByStatus(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    .end local v0    # "storyLesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
    :cond_0
    return-object p2

    .line 58
    .end local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;

    .restart local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter$a;
    goto :goto_0

    .line 71
    .restart local v0    # "storyLesson":Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
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

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;->setPaddingAndMargin(Landroid/view/View;Landroid/view/View;I)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 130
    :cond_0
    if-eqz p2, :cond_1

    .line 131
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    :cond_1
    return-void
.end method

.method public updateDataSet(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;Z)V
    .locals 2
    .param p1, "qualityStoryLessonTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;
    .param p2, "isRefresh"    # Z

    .prologue
    .line 114
    if-eqz p2, :cond_0

    .line 115
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;->lessons:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/adapter/QualityStoryCourseAdapter;->mDataSet:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;->lessons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
