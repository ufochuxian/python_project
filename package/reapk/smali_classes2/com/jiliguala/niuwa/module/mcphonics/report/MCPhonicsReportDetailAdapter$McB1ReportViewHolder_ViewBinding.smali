.class public Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder_ViewBinding;
.super Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;
.source "SourceFile"


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;Landroid/view/View;)V

    .line 20
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;

    .line 22
    const v0, 0x7f090505

    const-string v1, "field \'songsContainer\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;->songsContainer:Landroid/widget/LinearLayout;

    .line 23
    const v0, 0x7f0905ae

    const-string v1, "field \'touchContainer\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;->touchContainer:Landroid/widget/LinearLayout;

    .line 24
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;

    .line 29
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;

    .line 32
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;->songsContainer:Landroid/widget/LinearLayout;

    .line 33
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB1ReportViewHolder;->touchContainer:Landroid/widget/LinearLayout;

    .line 35
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;->unbind()V

    .line 36
    return-void
.end method
