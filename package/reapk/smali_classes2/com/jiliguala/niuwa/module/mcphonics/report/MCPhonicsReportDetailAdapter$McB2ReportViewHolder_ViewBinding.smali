.class public Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder_ViewBinding;
.super Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;
.source "SourceFile"


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder;Landroid/view/View;)V

    .line 21
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;

    .line 23
    const v0, 0x7f09062b

    const-string v1, "field \'wordsContainer\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->wordsContainer:Landroid/widget/LinearLayout;

    .line 24
    const v0, 0x7f0904bc

    const-string v1, "field \'sentenceContainer\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->sentenceContainer:Landroid/widget/LinearLayout;

    .line 25
    const v0, 0x7f09050a

    const-string v1, "field \'songContainer\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->songContainer:Landroid/widget/LinearLayout;

    .line 26
    const v0, 0x7f09050d

    const-string v1, "field \'songTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->songTitle:Landroid/widget/TextView;

    .line 27
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;

    .line 32
    .local v0, "target":Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder_ViewBinding;->target:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;

    .line 35
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->wordsContainer:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->sentenceContainer:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->songContainer:Landroid/widget/LinearLayout;

    .line 38
    iput-object v1, v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$McB2ReportViewHolder;->songTitle:Landroid/widget/TextView;

    .line 40
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailAdapter$ReportViewHolder_ViewBinding;->unbind()V

    .line 41
    return-void
.end method
