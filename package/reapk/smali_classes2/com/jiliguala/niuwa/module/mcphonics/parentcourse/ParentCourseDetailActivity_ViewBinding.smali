.class public Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

.field private view2131296406:Landroid/view/View;

.field private view2131296465:Landroid/view/View;

.field private view2131296982:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;Landroid/view/View;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;Landroid/view/View;)V
    .locals 6
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    const v5, 0x7f0902d6

    const v4, 0x7f0900d1

    const v3, 0x7f090096

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    .line 39
    const-string v1, "field \'backIcon\' and method \'back\'"

    invoke-static {p2, v3, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'backIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v0, v3, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->backIcon:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f090206

    const-string v2, "field \'finishCount\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->finishCount:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f090437

    const-string v2, "field \'recyclerView\'"

    const-class v3, Landroid/widget/ListView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->recyclerView:Landroid/widget/ListView;

    .line 50
    const-string v1, "field \'listen\' and method \'goListen\'"

    invoke-static {p2, v5, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    const-string v1, "field \'listen\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v0, v5, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->listen:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->view2131296982:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const-string v1, "field \'btnReport\' and method \'goReport\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 60
    const-string v1, "field \'btnReport\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {v0, v4, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->btnReport:Landroid/widget/Button;

    .line 61
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->view2131296465:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding$3;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f0902e6

    const-string v2, "field \'loadingProgress\'"

    const-class v3, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->loadingProgress:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 69
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    .line 75
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    .line 78
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->backIcon:Landroid/widget/ImageView;

    .line 79
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->finishCount:Landroid/widget/TextView;

    .line 80
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->recyclerView:Landroid/widget/ListView;

    .line 81
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->listen:Landroid/widget/TextView;

    .line 82
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->btnReport:Landroid/widget/Button;

    .line 83
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->loadingProgress:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 85
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->view2131296406:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->view2131296982:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->view2131296982:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->view2131296465:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity_ViewBinding;->view2131296465:Landroid/view/View;

    .line 91
    return-void
.end method
