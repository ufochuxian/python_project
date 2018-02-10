.class Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->goToInteractCourseActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 494
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    .local v0, "interactLessonDetailIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    const-string v1, "COURSE_ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->itemid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 500
    return-void
.end method
