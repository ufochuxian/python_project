.class public Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;

.field private view2131296406:Landroid/view/View;

.field private view2131296814:Landroid/view/View;

.field private view2131297499:Landroid/view/View;

.field private view2131297506:Landroid/view/View;

.field private view2131297811:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;Landroid/view/View;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;Landroid/view/View;)V
    .locals 4
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    const v3, 0x7f090096

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;

    .line 41
    const-string v1, "field \'mBackIcon\' and method \'onBack\'"

    invoke-static {p2, v3, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mBackIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v0, v3, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v1, 0x7f090176

    const-string v2, "field \'mLessonIcon\'"

    const-class v3, Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mLessonIcon:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 51
    const v1, 0x7f090567

    const-string v2, "field \'mShareTxt\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f09023d

    const-string v2, "field \'mGradeIcon\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mGradeIcon:Landroid/widget/ImageView;

    .line 53
    const v1, 0x7f090613

    const-string v2, "method \'goShare\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131297811:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0904e2

    const-string v2, "method \'goShare\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131297506:Landroid/view/View;

    .line 63
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding$3;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f09022e

    const-string v2, "method \'goShare\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131296814:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding$4;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f0904db

    const-string v2, "method \'goShare\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131297499:Landroid/view/View;

    .line 79
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding$5;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;

    .line 91
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;

    .line 94
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 95
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mLessonIcon:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 96
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mShareTxt:Landroid/widget/TextView;

    .line 97
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->mGradeIcon:Landroid/widget/ImageView;

    .line 99
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131296406:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131297811:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131297811:Landroid/view/View;

    .line 103
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131297506:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131297506:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131296814:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131296814:Landroid/view/View;

    .line 107
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131297499:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity_ViewBinding;->view2131297499:Landroid/view/View;

    .line 109
    return-void
.end method
