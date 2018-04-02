.class public Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;
.super Landroid/support/v4/view/af;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final ONE_PAGE_NUM:I = 0x8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCourseCatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;",
            ">;"
        }
    .end annotation
.end field

.field private mCourseEntranceTemplete:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

.field private mCurrentPos:I

.field private mGridAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "courseEntranceTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/view/af;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCourseEntranceTemplete:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    .line 42
    return-void
.end method

.method private goToInteractActivity(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;)V
    .locals 4
    .param p1, "courseCat"    # Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    .prologue
    .line 117
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "course_cat"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 120
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 121
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 84
    if-eqz p3, :cond_0

    .line 85
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCourseEntranceTemplete:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCourseEntranceTemplete:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCourseEntranceTemplete:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;->course_cat:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goToQualityStoryLessonActivity(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;)V
    .locals 4
    .param p1, "courseCat"    # Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    .prologue
    .line 107
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "course_cat"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 110
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 47
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00dd

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090243

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 51
    .local v0, "gridView":Landroid/widget/GridView;
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCourseEntranceTemplete:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$Data;->course_cat:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCourseCatList:Ljava/util/ArrayList;

    .line 54
    new-instance v2, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCourseCatList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mGridAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;

    .line 55
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mGridAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 79
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCourseCatList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    .line 94
    .local v0, "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->isStoryLesson()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->goToQualityStoryLessonActivity(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;)V

    .line 104
    .end local v0    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v0    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    :cond_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->isLesson()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->goToInteractActivity(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCurrentPos:I

    .line 132
    return-void
.end method

.method public updateGridViewData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "courseCats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;>;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mGridAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCourseCatList:Ljava/util/ArrayList;

    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mGridAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/CommonLooperAdapter;->mCourseCatList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 66
    :cond_0
    return-void
.end method
