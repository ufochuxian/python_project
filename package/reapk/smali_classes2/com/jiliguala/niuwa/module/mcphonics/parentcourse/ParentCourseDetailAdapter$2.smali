.class Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 246
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;->c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;->a:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    iput p3, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;->c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->access$200(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;)Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;->c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;->a:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->access$300(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;)V

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;->c:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;->a:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    iget v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;->b:I

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->access$400(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V

    .line 253
    :cond_0
    return-void
.end method
