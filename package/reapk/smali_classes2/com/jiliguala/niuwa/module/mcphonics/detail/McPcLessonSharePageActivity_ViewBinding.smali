.class public Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;

.field private view2131296406:Landroid/view/View;

.field private view2131297225:Landroid/view/View;

.field private view2131297501:Landroid/view/View;

.field private view2131297506:Landroid/view/View;

.field private view2131297810:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;Landroid/view/View;)V
    .locals 4
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    const v3, 0x7f090096

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;

    .line 40
    const-string v1, "field \'mBackIcon\' and method \'onBack\'"

    invoke-static {p2, v3, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mBackIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v0, v3, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f0902c2

    const-string v2, "field \'lessonIcon\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->lessonIcon:Landroid/widget/ImageView;

    .line 50
    const v1, 0x7f0904e5

    const-string v2, "field \'mShareTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0903c9

    const-string v2, "method \'goShare\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297225:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f0904dd

    const-string v2, "method \'goShare\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297501:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding$3;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f090612

    const-string v2, "method \'goShare\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297810:Landroid/view/View;

    .line 69
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding$4;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0904e2

    const-string v2, "method \'goShare\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297506:Landroid/view/View;

    .line 77
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding$5;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;

    .line 89
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;

    .line 92
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 93
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->lessonIcon:Landroid/widget/ImageView;

    .line 94
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    .line 96
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131296406:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 98
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297225:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297225:Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297501:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297501:Landroid/view/View;

    .line 102
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297810:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297810:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297506:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity_ViewBinding;->view2131297506:Landroid/view/View;

    .line 106
    return-void
.end method
