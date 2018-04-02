.class public Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;

.field private view2131296406:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    const v4, 0x7f090096

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;

    .line 33
    const v1, 0x7f09059f

    const-string v2, "field \'topBarTitle\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->topBarTitle:Landroid/widget/TextView;

    .line 34
    const-string v1, "field \'backIcon\' and method \'onBack\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'backIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v0, v4, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->backIcon:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f090456

    const-string v2, "field \'reportRecyclerView\'"

    const-class v3, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->reportRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 44
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;

    .line 50
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;

    .line 53
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->topBarTitle:Landroid/widget/TextView;

    .line 54
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->backIcon:Landroid/widget/ImageView;

    .line 55
    iput-object v2, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;->reportRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 57
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding;->view2131296406:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity_ViewBinding;->view2131296406:Landroid/view/View;

    .line 59
    return-void
.end method
