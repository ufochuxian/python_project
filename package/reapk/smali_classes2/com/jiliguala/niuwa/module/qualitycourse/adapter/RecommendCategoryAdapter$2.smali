.class Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->showCourses(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;

.field final synthetic b:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$2;->b:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$2;->a:Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$2;->b:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->access$000(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;)Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$2;->b:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->access$200(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;)Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$2;->b:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;->access$200(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter;)Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$2;->a:Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/RecommendCategoryAdapter$OnCatCourseItemListener;->onCourseItemClick(Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$MiddleBean$CoursesBean;)V

    goto :goto_0
.end method
