.class Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->onItemClick(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

.field final synthetic b:I

.field final synthetic c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;->c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    iput p3, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 79
    const-string v0, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;->c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;->c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;->c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->showProgress(Z)V

    .line 84
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;->c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;->c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->showProgress(Z)V

    .line 92
    :cond_0
    const-string v0, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 93
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f018e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    return-void
.end method
