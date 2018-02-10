.class public Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;,
        Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;,
        Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mContext:Landroid/content/Context;

.field private mMiddleBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCatCourseItemListener:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mMiddleBeanList:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 41
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;)Lcom/jiliguala/niuwa/common/util/xutils/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->goCatActivity(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;)Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mOnCatCourseItemListener:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;

    return-object v0
.end method

.method private getCourseViewList(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v3, "viewGroups":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 147
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 148
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 149
    .local v1, "convertView":Landroid/view/ViewGroup;
    new-instance v4, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;

    invoke-direct {v4}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;-><init>()V

    .line 150
    .local v4, "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;
    const v5, 0x7f090273

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->a:Landroid/widget/ImageView;

    .line 151
    const v5, 0x7f0901e4

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->b:Landroid/widget/TextView;

    .line 152
    const v5, 0x7f090135

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->c:Landroid/widget/TextView;

    .line 153
    const v5, 0x7f0901be

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->d:Landroid/widget/ImageView;

    .line 154
    const v5, 0x7f09016c

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->e:Landroid/widget/ImageView;

    .line 155
    const v5, 0x7f090178

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->f:Landroid/view/View;

    .line 156
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 157
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "convertView":Landroid/view/ViewGroup;
    .end local v4    # "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;
    :cond_0
    return-object v3
.end method

.method private getResourceByStatus(Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;)I
    .locals 1
    .param p1, "course"    # Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->isPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const v0, 0x7f08013a

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->isLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const v0, 0x7f080139

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->isRmb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const v0, 0x7f080138

    goto :goto_0

    .line 139
    :cond_2
    const v0, 0x7f08013b

    goto :goto_0
.end method

.method private goCatActivity(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mMiddleBeanList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;

    .line 176
    .local v1, "middleBean":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;-><init>()V

    .line 177
    .local v0, "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->getTtl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->ttl:Ljava/lang/String;

    .line 178
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->getCat()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->cat:Ljava/lang/String;

    .line 179
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->getTarget()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->target:Ljava/lang/String;

    .line 180
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->isStoryLesson()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->goToQualityStoryLessonActivity(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;)V

    .line 189
    .end local v0    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    .end local v1    # "middleBean":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local v0    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    .restart local v1    # "middleBean":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;
    :cond_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->isLesson()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->goToInteractActivity(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v0    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    .end local v1    # "middleBean":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private goToInteractActivity(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;)V
    .locals 4
    .param p1, "courseCat"    # Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    .prologue
    .line 203
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "course_cat"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 207
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v1

    .line 165
    invoke-virtual {v0, p2, p1, v1}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 168
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 170
    :cond_1
    return-void
.end method

.method private showCourses(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "coursesBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;>;"
    .local p2, "courseViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 102
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 103
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;

    .line 104
    .local v0, "course":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 105
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    new-instance v6, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$2;

    invoke-direct {v6, p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;

    .line 117
    .local v5, "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;
    iget-object v6, v5, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->getThmb()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, v9}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 118
    iget-object v6, v5, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->getCttl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->getTtl()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v9, "!"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    :cond_0
    iget-object v6, v5, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v6, v5, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->getResourceByStatus(Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v9, v5, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->isPlay()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v9, v5, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;->f:Landroid/view/View;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;->isnew()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v8

    :goto_2
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    move v6, v8

    .line 126
    goto :goto_1

    :cond_2
    move v6, v7

    .line 127
    goto :goto_2

    .line 129
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    .end local v5    # "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$a;
    :cond_3
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mMiddleBeanList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mMiddleBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b00d9

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v3, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;-><init>()V

    .line 68
    .local v3, "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;
    const v4, 0x7f09010f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;->a:Landroid/widget/TextView;

    .line 69
    const v4, 0x7f09002e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;->b:Landroid/widget/TextView;

    .line 70
    const v4, 0x7f09016e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 71
    .local v1, "coursesContainer":Landroid/widget/LinearLayout;
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->getCourseViewList(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;->c:Ljava/util/List;

    .line 73
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    .end local v1    # "coursesContainer":Landroid/widget/LinearLayout;
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mMiddleBeanList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;

    .line 78
    .local v2, "middleBean":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->getCourses()Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "courses":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;>;"
    iget-object v4, v3, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;->c:Ljava/util/List;

    invoke-direct {p0, v0, v4}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->showCourses(Ljava/util/List;Ljava/util/List;)V

    .line 81
    iget-object v4, v3, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;->getTtl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v4, v3, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;->b:Landroid/widget/TextView;

    new-instance v5, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-object p2

    .line 75
    .end local v0    # "courses":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;>;"
    .end local v2    # "middleBean":Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;
    .end local v3    # "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;

    .restart local v3    # "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$b;
    goto :goto_0
.end method

.method public goToQualityStoryLessonActivity(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;)V
    .locals 4
    .param p1, "courseCat"    # Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    .prologue
    .line 192
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "course_cat"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 195
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 196
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method public setOnCatCourseItemListener(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;)V
    .locals 0
    .param p1, "mOnCatCourseItemListener"    # Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mOnCatCourseItemListener:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;

    .line 258
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "middleBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mMiddleBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->mMiddleBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->notifyDataSetChanged()V

    .line 219
    return-void
.end method
